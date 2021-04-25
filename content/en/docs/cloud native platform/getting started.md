---
title: "Getting Started"
linkTitle: "Getting Started"
weight: 1
type: "docs"
---

## Pre-Requisites

These are the current prerequisite steps required to be able to connect to a Kubernetes cluster (**SDLC**).

This checklist corresponds to what must be met for every member in your project team:

* A cloud account and corresponding Virtual Machine
* Assigned a Active Directory group to which access is granted access to a namespace
* Granted explicit access to our kube context files in GitLab

## Checklist to Start Working in the cloud

1. Request Cloud account : http://jira.example.ca
1. Log-in to Azure Portal: https://confluence.example.ca
1. Create VM in the cloud: https://confluence.example.ca
1. Get access to GitLab: https://confluence.example.ca
1. Get access to Artifactory, and Octopus: https://artifactory.example.ca, https://octopus.example.ca
1. Connect to the newly created VM: https://confluence.example.ca
1. VSCode setup : https://confluence.example.ca
1. Guide To Cloud Native Development - https://confluence.example.ca

## Learning

The official Kubernetes + Docker documentation is quite excellent and should always be your first stop.

However we have provided some additional materials below which should provide some additional assistance.

### Beginner

* [Children’s Illustrated guide to Kubernetes](https://azure.microsoft.com/en-us/resources/videos/the-illustrated-children-s-guide-to-kubernetes/)
* [Phippy Goes to the Zoo](https://azure.microsoft.com/en-us/resources/videos/phippy-goes-to-the-zoo-a-kubernetes-story/)
* [Phippy and Zee go to the mountains](https://phippygoestothemountains.github.io/)
* [Kubernetes Learning Path](https://azure.microsoft.com/mediahandler/files/resourcefiles/kubernetes-learning-path/Kubernetes%20Learning%20Path_Version%202.0.pdf)

### Intermediate

* The Kubernetes Book
* Kubernetes Up and Running
* Kubernetes in Action

> These books are available to you as PDF’s upon request

## Tooling

In order to work efficiently with Kubernetes we recommend that you install the following tools:

* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* [helm](https://helm.sh/)
* [vscode kubernetes extension](https://code.visualstudio.com/docs/azure/kubernetes)
* [Lens]({{< ref "/docs/cloud native platform/lens" >}} "Lens")

## Kube Contexts

If kubectl doesn’t work you are encouraged to check and make sure your kube context file(s) haven’t been changed and / or updated.

### SDLC

* [k8s-cancentral-01-dev-shared](https://gitlab.example.ca)
* [k8s-cancentral-01-test-shared](https://gitlab.example.ca)
* [k8s-cancentral-01-production-shared](https://gitlab.example.ca)

### Additional Environments

* [k8s-cancentral-02-innovation-shared](https://gitlab.example.ca)
* [k8s-cancentral-01-management-shared](https://gitlab.example.ca)

> Please note if you are unable to access the links you will need to file a JIRA in order to get yourself added to the repository.

## Application Templates

We provide an example repository providing some helpful examples for some of the most common deployments.

* [cloudnative/onboarding/kubernetes-applications-templates](https://gitlab.example.ca)

The repository provides a Dockerfile and a Helm Chart for a variety of programming languages:

* dotnet
* go
* java
* nodejs
* php
* python

## Helm Charts

Most of our project level workloads are deployed via Helm Chart and the repo itself is set to public so you can learn from real world examples.

All of the secrets and custom values (overrides) are stored in the CD solution which is why this repository is allowed to
be public.

* [statcan/charts](https://github.com/statcan/charts) (public)
* [cloudnative/charts](https://gitlab.example.ca) (internal)

## What is Helm?

Helm is the official package manager for Kubernetes. It helps you define, install, and even upgrade even the most complex Kubernetes applications with ease.

If you deploy applications to Kubernetes, Helm makes it easy to version those deployments, package them, make a release, and then deploy, upgrade, and even rollback those deployments.

### Key Benefits

* Official Kubernetes package manager
* Reproducible builds of your application
* Intelligent management of manifest files
* Manage and version releases

### Why Teams Love Helm

Application teams love Helm because it helps project teams:

**Manage Complexity:** Charts describe even the most complex application, providing repeatable application installation, and serve as the sole single point of authority.

**Easy Updates:** Charts take the pain out of updates with in place upgrades and even custom hooks.

**Simple Sharing:** Charts are incredibly easy to version, share, and host on public and / or private server.

### Terminology

**Helm Charts:** Helm uses a packaging format called charts. A chart is a collection of files that describe a releated set of Kubernetes resources. A single chart might be used to deploy something like a Nginx service or even something far more complicated like a full deployment of a **COTS** product.

**Helm Repositories:** At a high level, a chart repository is a location where packaged charts can be stored and shared. Most of Statistics Canada Helm Charts are stored in the Artifactory Helm repository:

* [Artifactory](https://artifactory.example.ca)

## OCI Image Pipeline

![Pipeline](/images/cloudnative/pipeline.png "Pipeline")

We provide an opinionated automated pipeline that builds OCI images from Dockerfiles using kaniko. This pipeline provides linting via optional components such as Dockle, Hadolint, and Trivy.

* [kaniko-image-ci](https://gitlab.example.ca)

This pipeline follows a versioning and CI methodology that is closely linked to a GitOps model. The state of the git repository and its versioning are the canonical state of the images produced and later run in the **SDLC**.

## Flows

This pipeline defines three flows related to the type of git object:

* master
* branches
* tags

The flows work best for a repository with linear feature-branch based development with periodic releases of milestones.

However these flows can easily be change to suite other workflows by overriding the jobs.

### Master

On the master branch, the image is built, scanned, linted, and then pushed to a container registory.

![Master](/images/cloudnative/flowmaster.png "Master")
