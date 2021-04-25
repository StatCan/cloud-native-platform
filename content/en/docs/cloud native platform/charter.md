---
title: "Cloud Native Charter"
linkTitle: "Cloud Native Charter"
weight: 10
type: "docs"
draft: false
---

## Summary

### What is the Cloud Native Team?

The Cloud Native team is a modernization initiative part of the larger Cloud Services Enablement Project (CSEP). We investigate, design, develop and operate modern infrastructure systems powered by cloud-first designs and open source software that enable project teams to develop, deploy, and operate applications in a secure, flexible and inter-operable fashion.

## Objectives

We have three primary objectives:

**To design and build a cross-cloud platform for application teams.**

> The platform enables built-in security, logging, monitoring and observability of applications with little to no effort from the application teams using different technology stacks.

**To assist application teams with modernizing their applications for a cloud native environment.**

> This includes moving applications towards a more distributed and resilient micro-services architecture. The goal of the team is to become less hands-on and more architectural guidance for application teams.

**To deliver and develop applications more rapidly and in a secure manner.**

> This is possible due to the reduced surface area application developers need to concern themselves with while inheriting the baked in security and unified promotion of workloads from development to production. Cloud Native technologies are constantly evolving, and it's the Cloud Native team's responsibility to continue to monitor, investigate, and adapt to those trends.

## Ethos / Vision

The Cloud Native team investigates and makes new technologies available to application teams. Longer-term, the vision is to enable development teams to be fully self sufficient, moving our support from "hands-on" towards "trouble assistance".

## Goals

Provide a highly-available cloud infrastructure platform.

Provide core services to applications which enable faster development cycles by implementing solutions to common requirements:

* Request handling (TLS, routing, etc.)
* Logging
* Monitoring

We strive for the use of technologies belonging to the Cloud Native Computing Foundation (CNCF) and/or Open Source Software wherever possible.

The work performed by the team should be Open Sourced by default, except where this would violate Government of Canada or Statistics Canada policies.

## Out of Scope

As established / approved by the [Cloud Technical Review Committee (CTRC)](https://confluence.example.ca) through the document on cloud computing, the final destination for various computing workloads are targeted for the Cloud Native environment, with the exception of:

* .NET Framework
* IIS
* SAS Workloads
* WinForms

Many of the above technologies we can indeed run but other considerations such as current availability, timelines, and priority may have come into play.

## Governance

Governance actively assesses and manages the risks associated with the mission program throughout the lifecycle. Governance activities do not stop after Authority to Operate (ATO) but continue throughout the software lifecycle, including operations and monitoring. DevSecOps can facilitate and automate many governance activities.

## Roles

The following are the most common types of users that will interact with a Kubernetes cluster:

1. **Cloud Native Team (Developers / Administrators)**

> Users that are responsible to do administrative or developmental tasks on the cluster along with the platform services. This includes operations like upgrading the cluster or creating the resources/workloads on the cluster.

2. **Project Teams**

> Users that are granted namespace level permissions for their projects and tasked with the successful operation of their application once it is successfully on-boarded through CI/CD.

3. **End Users**

> Users that access the applications deployed on our Kubernetes cluster. Access restrictions for these users are managed by the applications themselves.

The Cloud Native team consists primarily of developers along with several administrators who strive to assist both the project teams and end users of the platform. Developers will primarily be tasked the operation and maintenance of platform level components while Administrators will be concerned with the operation and maintenance of the Clusters themselves. It is a requirement though that all members train and assist the on-boarding for the priority project teams.

This is in addition to creating and improving our documentation to assist subsequent teams who might not have direct involvement by us.

There are a few caveats to the above which can result in additional roles being given to team members (should they be willing):

Maintain the suite of Horizontal Services whose administration currently falls under our purview.

We work closely with the CI/CD team which is slowly taking on more responsibilities.

We work closely with the Data Analytics as a Service team.

We often provide and consult with the greater Cloud Service Enablement Project (CSEP) team assisting with departmental initiatives.

## Decision Making

Decisions related to application onboarding onto the Kubernetes clusters (SDLC) is done at the weekly CTRC meetings, guided by the business assessment Q&A and as prioritized by the OCIO.

For platform functionality, decisions are made by the team as a whole, guided by the requirements of application teams and lead by the lead technical resources of the project.

## Off-Ramp

Things change, priorities get optimized, life happens. Having an easy on and off ramp is important to this team. If a lead needs to take an extended absence or leave the team, a shadow would be offered the lead position prior to seeking a lead elsewhere.

Therefore moving from shadow to lead and vice versa should be made as simply as possible by continued communications from this team about its members, roles, successes, and failures.
