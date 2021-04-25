---
title: "Supported Workloads"
linkTitle: "Workloads"
weight: 65
type: "docs"
draft: false
---

## Introduction

Deploy and manage containerized applications with a managed Kubernetes service. Leveraging the Azure Kubernetes Service (AKS) the cloud native team offers serverless Kubernetes, an integrated CI / CD experience while promoting enterprise grade securtiy and governance. Unite your development and operations teams on a single platform to rapidly built, deliver, and scale applications with confidence.

* [Cloud Native Reference Documents](https://gcdocs.example.ca)
* [Cloud Native Cloud Native Charter]({{< ref "/docs/cloud native platform/charter" >}} "Cloud Native Cloud Native Charter")
* [Cloud Native Service Catalogue](https://confluence.example.ca)
* [Cloud Native Concept of Operations](https://gcdocs.example.ca)

## Target Selection

The Cloud Native platform is able to run nearly all technologies that are being considered for migration into the cloud environment. Generally, if there is an official Docker container available for a given technology, we can run it.

However, we do know there are some nuances with applications of certain workloads that might make it challenging to go to a Kubernetes environment.

The following technologies are those that would **NOT** go to the a Kubernetes environment at this time:

* .NET Framework
* Production databases as should be Managed Services
* SAS
* GUI-only applications (Win Forms)

This reflects and aligns with the Cloud Assessment Q&A document that was approved at the Cloud Technical Review Committee, which describes the order of consideration for applications.

## Cloud Native Workloads

As we mentioned above, we can run basically any technology that has an official Docker image. If you want a more definitive list, here are the technologies that we've already worked with:

* C/C++
* PHP
* Python
* .NET Core
* NodeJS / TypeScript
* Java
* Golang

## SDLC

The SDLC (software development lifecycle) environments / Kubernetes clusters that we currently provide for project teams along with full **SLA**:

* development
* test
* qa
* prod

Everything is created entirely using infrastructure as code (Terraform) and further SDLC environments can easily be created should the need arise.

We do support a few other environments in addition to the core SDLC:

* inno
* infratest
* ingress
* mgmt

All of our environments have the full authority to operate (ATO).

Our SDLC runs on the Azure cloud service provider. We have open sourced both our Azure and IBM C.S.P. templates which reside on the GC Accelerators. Internally at Statistics Canada we make derivatives of the Azure ones for each SDLC and separate out the infrastructure itself from the platform level components.

* [terraform-kubernetes-aks](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-aks)
* [terraform-kubernetes-aks-platform](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-aks-platform)
* [terraform-kubernetes-iks](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-iks)
* [terraform-kubernetes-iks-platform](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-iks-platform)

## Infrastructure

The below templates can then be found for their SDLC infrastructure counterparts:

* [terraform-kubernetes-aks-dev](https://gitlab.example.ca)
* [terraform-kubernetes-aks-test](https://gitlab.example.ca)
* [terraform-kubernetes-aks-qa](https://gitlab.example.ca)
* [terraform-kubernetes-aks-prod](https://gitlab.example.ca)

Additional templates for other environments:

* [terraform-kubernetes-aks-inno](https://gitlab.example.ca)
* [terraform-kubernetes-aks-infratest](https://gitlab.example.ca)
* [terraform-kubernetes-aks-ingress](https://gitlab.example.ca)
* [terraform-kubernetes-aks-mgmt](https://gitlab.example.ca)

## Platform

The below templates can then be found for their SDLC infrastructure counterparts:

* [terraform-kubernetes-aks-platform-dev](https://gitlab.example.ca)
* [terraform-kubernetes-aks-platform-test](https://gitlab.example.ca)
* [terraform-kubernetes-aks-platform-qa](https://gitlab.example.ca)
* [terraform-kubernetes-aks-platform-prod](https://gitlab.example.ca)

Additional templates for other environments:

* [terraform-kubernetes-aks-platform-inno](https://gitlab.example.ca)
* [terraform-kubernetes-aks-platform-infratest](https://gitlab.example.ca)
* [terraform-kubernetes-platform-aks-ingress](https://gitlab.example.ca)
* [terraform-kubernetes-aks-platform-mgmt](https://gitlab.example.ca)

## Data Science Workloads

If you have a data science related project you might be interested in the **Data Analytics as a Platform**. This runs Kubernetes under the hood but is tailored for an optimal data science experience using the most popular OSS tools.

* [statcan/daaas](https://github.com/statcan/daaas)
* [terraform-kubernetes-aks-daaas](https://github.com/StatCan/terraform-kubernetes-aks-daaas)
* [terraform-kubernetes-aks-platform--daaas](https://github.com/StatCan/terraform-kubernetes-aks-platform-daaas)

## Service Request

The following represent some of the service requests you are able to file to gather assistance from our team:

* [Request Support](https://jirab.example.ca)
* [Request Enhancement](https://jira.example.ca)
* [Incident Report](https://confluence.example.ca)

## Service Owner

The following are some of the key contacts you might need to be aware of.

* **Service Owner**: Andrew Sinkinson
* **IT Manager**: Steven Melo
* **Senior TA**: William Hearn

## Service Delivery

We provide full coverage and SLA for the following environments (Kubernetes clusters):

* dev
* test
* qa
* prod
* innovation
* daaas

Our maintenance window occurs every Tuesday and Thursday from 7:00 pm to 12:00 am.

Our core service support hours occur everyday from 8:00 am to 5:00 pm eastern time.

## Change Management

Platform-level changes are announced via the cloud maintenance notification process:

* [Schedule Maintenance](https://confluence.example.ca)

Additionally please take a look at our maintenance strategy documentation for an overview of our methodology:

* [Maintenance Strategy](https://confluence.example.ca)

## Security

Protected-B (PBLL) Security Compliant with Interim Authority to Operate (ATO):

* [XXX-XXXX - Containers CIS Benchmark](https://jira.example.ca/browse/XXX-XXXX)
* [XXX-XXXX - Kubernetes CIS Benchmark](https://jira.example.ca/browse/XXX-XXXX)
* [XXX-XXXX - Kubernetes / Containers SRTM](https://jira.example.ca/browse/XXX-XXXX)

## Kubernetes Application Templates

We provide an example repository providing some helpful examples for some of the most common deployments.

The repository provides a Dockerfile and a Helm Chart for a variety of programming languages:

* dotnet
* go
* java
* nodejs
* php
* python

## Helm Charts

Most of our project level workloads are deployed via Helm Chart and the repo itself is set to public so you can learn from real world examples.

All of the secrets and custom values (overrides) are stored in the CD solution which is why this repository is allowed to be public.

* [statcan/charts](https://github.com/statcan/charts) (public)
* [cloudnative/charts](https://github.com/cloudnative/k8s/charts) (internal)
