---
title: "Lens"
linkTitle: "Lens"
weight: 60
type: "docs"
draft: false
---

## Introduction

![Lens](/images/cloudnative/lens.png "Lens")

### What is Lens?

Lens provides the full situational awareness for everything that runs in Kubernetes. It's lowering the barrier of entry for people just getting started and radically improving productivity for people with more experience.

* [lensapp/lens](https://github.com/lensapp/lens)

### Key Features

Lens provides a wealth of improvements to both usability and end user experience over standard kubectl.

* Unified, secure, multi-cluster management
* Real-time cluster state visualization
* Resource utilization charts and trends with history
* Prometheus integration
* Smart terminal access to nodes and containers
* RBAC security is preserved
* Port Forwarding

### Sanity Checks

Before you can successfully use Lens you should verify with kubectl that you have the appropriate access.

Since often times you might only have access to your project groups individual namespace it is imperative that you always pass your namespace as a parameter to kubectl.

```sh
# List all of the pods in your namespace
> kubectl get po -n <namespace>
```

## Kube Contexts

If kubectl doesn’t work you are encouraged to check and make sure your kube context file(s) haven’t been changed and / or updated.

* [k8s-cancentral-01-dev-shared](https://gitlab.example.ca)
* [k8s-cancentral-01-test-shared](https://gitlab.example.ca)
* [k8s-cancentral-01-production-shared](https://gitlab.example.ca)

Please note if you are unable to access the links you will need to file a JIRA in order to get yourself added to the repository.

## Accessible Namespaces

After confirming that your kubectl is working and if you only have granted access to individual namespaces (which is likely the case) you should tell Lens the
individual namespaces. You can access this setting under cluster settings by right clicking your cluster icon.

## Active Directory

In general Active Directory groups are what is used to grant users access to our Kubernetes SDLC environments.

Very rarely do we ever assign individual access and when requesting other users to have access to their individual project level namespace we ask that you always provide the Azure AD group name and / or object id of that group in the JIRA ticket.

All of these mappings are controlled through terraform in the following repositories though access to these repositories are limited.

* [k8s-cancentral-01-dev](https://gitlab.example.ca)
* [k8s-cancentral-01-test](https://gitlab.example.ca)
* [k8s-cancentral-01-production](https://gitlab.example.ca)

## Frequently Asked Questions

Question: Lens isn’t working correctly and/or I am having some unexpected errors

> You should always make sure you are using the latest release of Lens which can be found at the following address: https://github.com/lensapp/lens/releases

Question: An error similar to cannot connect to localhost:8080 is present

> This error likely means you have linked to an incorrect or outdated kube config file and you should check to make sure you have the latest file.

Question: Cannot list namespaces/pods

> You have likely not configured the accessible namespaces under your cluster settings for Lens.

Question: I would like to grant access to my namespace to other users

> You will have to file a JIRA specifying the Azure Active Directory group that contains the user you wish to be given access to your namespace.
