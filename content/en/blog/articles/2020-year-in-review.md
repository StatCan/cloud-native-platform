---
title: "Year in Review (2020)"
linkTitle: "Year in Review (2020)"
date: 2020-01-05
description: "What the cloud native team has accomplished in 2020"
type: "blog"
---

## Cloud Native Team

The Cloud Native team is a modernization initiative part of the larger Cloud Enablement Project. We investigate, design, develop and operate modern infrastructure systems powered by cloud-first designs and open source software that enable project teams to develop, deploy, and operate applications in a secure, flexible and interoperable fashion.

> **Note:** For the past 1.5 years until a few weeks ago, the Cloud Native Team was a team of 2 people and now we have grown to a team of 5.

We have three primary objectives:

1. To design and build a cross-cloud platform for application teams.

> The platform enables built-in security, logging, monitoring and observability of applications with little to no effort from the application teams using different technology stacks.

2. To assist application teams with modernizing their applications for a cloud native environment.

> This includes moving applications towards a more distributed and resilient microservices architecture.

3. To deliver and develop applications more rapidly and in a secure manner.

> This is possible due to the reduced surface area application developers need to concern themselves with while inheriting the baked in security and unified promotion of workloads from dev to production.

To support these and other workloads, we also provide the core foundational **Horizontal Services** (described further below) in the cloud for all infrastructure and development teams across Statistics Canada.

> **Note:** It is important to mention that all of these horizontal services run in our management cluster and have been maintained with 99% uptime over the past 2 years.

We also have developed a series of pre-defined templates for the most common technology stacks to speed the onboarding time of applications to hours. All the while providing a consistent pipeline and user experience from development to production across all of the project teams reducing the support overhead.

Lastly, it is important to mention we are following industry standards and, in particular, leveraging the work open sourced by the U.S. Department of Defense Chief Software Office's DevSecOps platform to modernize our workflows.

### Kubernetes

We have multiple Kubernetes clusters for different environments:

1. Development
1. Test
1. QA (planned if needed)
1. Production
1. Management: Used for Horizontal Services
1. Innovation: Used for the rapid prototyping (in days and not months) and evaluation of workloads
1. DAaaS: Used for data science related workloads

We have also experimented running our platform on multiple clouds, including AWS and IBM Cloud.

All of the clusters implement the following controls:

1. **Enforce RBAC**: User permissions are associated to their Active Directory account / groups
1. **Policy Enforcement**: Enforce departmental security policies based on pre-defined criteria
1. **Security**: All data is encrypted at rest and in transit, and behind a corporate firewall
1. **Network Policy**: By default, network traffic is denied except where explicit flows between services have been granted
1. **Automated CI / CD**: Deployment of applications are done through a vetted DevSecOps process
1. **Automated Backups**: Backups of applications, data and cluster state
1. **Hybrid Workloads**: Support both Linux and Windows Workloads
1. **Infrastructure as Code**: All of our clusters can be destroyed and recreated entirely through automation (Terraform)

We launched and maintained over the past 2 years the Platform Services that empower project teams.

| Service                             | URL                                               |
|-------------------------------------|---------------------------------------------------|
| Cert Manager                        | N/A                                               |
| Elastic Stack                       | N/A                                               |
| Fluentd                             | N/A                                               |
| Helm                                | N/A                                               |
| Istio                               | N/A                                               |
| Istio (Kiali)                       | https://istio-grafana.example.ca                  |
| Istio (Grafana)                     | https://istio-grafana.example.ca                  |
| Open Policy Agent                   | N/A                                               |
| Prometheus Operator                 | https://prometheus.example.ca                     |
| Prometheus Operator (Alert Manager) | https://alertmanager.example.ca                   |
| Prometheus Operator (Grafana)       | https://grafana.example.ca                        |
| Terraform                           | N/A                                               |
| Velero                              | N/A                                               |
| Vault Sidecar Injector              | N/A                                               |

1. **Cert Manager**: Automatic issues and renews HTTPS certificates.
1. **Elastic Stack**: Logging aggregation stack.
1. **Fluentd**: Cluster log collector.
1. **Helm**: Assists you in the application lifecycle of Kubernetes applications.
1. **Istio**: Service mesh, providing service discovery, traffic handling, mutually-verified encryption, and more.
1. **Open Policy Agent**: Policy enforcement providing guard rails to platform usage (empowering developers while preventing risk).
1. **Prometheus Operator**: Cluster and application metric system.
1. **Terraform**: Infrastructure as Code deployment tool.
1. **Velero**: Kubernetes-centric backup tool (backup of cluster state and data disks)
1. **Vault Sidecar Injector**: Inject static and dynamic secrets into an application from the Vault secret manager.

> **Note:** The urls provided above are from the management environment but exist in all of the clusters.

### Platform Security

We have started the security assessment process for the Kubernetes platform with the Statistics Canada IT Security team. We have reviewed the Kubernetes CIS benchmarks, the TBS recommended controls and the ITSG-33 controls in general in the development of the platform.

This is one of the remaining outstanding tasks that prevent our Kubernetes platfrom from receiving its Protected B certification.

### Horizontal Services

We launched and maintained over the past 2 years in our management cluster the foundational Horizontal Services that empower both infrastructure and development teams.

| Service                  | URL                                          |
|--------------------------|----------------------------------------------|
| Artifactory              | https://artifactory.example.ca               |
| Confluence               | https://confluence.example.ca                |
| GitLab                   | https://gitlab.example.ca                    |
| Jenkins                  | https://jenkins.example.ca                   |
| JetBrains License Server | https://jetbrains-license-server.example.ca  |
| Jira                     | https://jira.example.ca                      |
| Octopus                  | https://octopus.example.ca                   |
| Questionnaires           | https://questionnaires.example.ca            |
| SonarQube                | https://sonarqube.example.ca                 |
| Vault                    | https://vault.example.ca                     |
| XRay                     | https://xray.example.ca                      |
| Zap                      | https://zap.example.ca/zap                   |

For a majority of the above services, we have:

* Performed a Proof of Concept to ensure the tool meets our needs
* Participated in the procurement (of non-open source solutions)
* Written a Concept of Operations
* Adhered to all Security Controls
* Provided ongoing configuration and maintenance
* Automated service deployment utilizing our continuous integration and delivery pipelines (unified workflow)

Each tool is further described here:

1. **Artifactory**: Repository for all software artifacts used and created.
1. **Confluence**: Team workspace for collaboration.
1. **GitLab**: Source code repository and build system.
1. **JetBrains License Server**: License server for the JetBrains suite of software.
1. **Jenkins**: Build system for legacy deployments.
1. **Jira**: Issue tracking management system.
1. **Octopus**: Continuous Deployment tool
1. **Questionnaires**: Drupal-powered webforms system
1. **SonarQube**: Static code analysis.
1. **Vault**: Static and dynamic secret management.
1. **XRay**: Security scanning of artifacts stored in Artifactory.
1. **Zap**: Security analysis tool for web applications.

### Continuous Integration and Continuous Delivery pipelines

We have developed a series of continuous integration (CI) and continuous delivery (CD) pipelines for the various technologies (Linux, Windows) in use by Statistics Canada. These pipelines have aided projects targeting both Cloud Native and Infrastrucuture as a Service (IaaS) infrastructure.

CI/CD pipelines have been developed using Configuration as Code (Gitlab CI/Jenkins and Octopus), and provide isolation to the individual application teams (restricting their permissions).

The CD pipeline provides a gated approach to the different Software Development Lifecycle (SDLC) environments, ensuring that an application behaves correctly in Dev, Test, QA before being permitted to deploy to the production environment. Octopus, the CD tool, can also control who is permitted to deploy to the various environments.

The Cloud Native team (as well as the whole cloud team) is also using these pipelines in the development of the baseline infrastructure.

### Applications / Project Teams

We have developed and provided common build templates for use by application teams. This provides them with a basic Docker, Helm chart and CI pipeline. Languages include:

* .NET Framework
* .NET Core
* Golang
* Java
* NodeJS
* PHP
* Python

We've also written documentation to help quickly onboard the new teams and streamlined our onboarding processes to ensure that teams can get quickly started with our platform.

### DAaaS

We have supported the DAaaS project by providing them with an isolated Kubernetes cluster (with autoscaling and GPU nodes) to support their investigation and trial of various technical solutions. This includes:

* JupyterHub
* Spark
* Hadoop
* Kubeflow
* Pachyderm
* Databricks
* Metrics (Prometheus/Grafana)
* Logging

We've also trained the DAaaS team on Terraform to manage their own Kubernetes environment. We assist them with setup and troubelshooting of their environment.

Through the work on DAaaS, we've also assisted other data science workloads onboard to the analytics platform. More specifically, we've assisted with setting up a pipeline to process satelitte imagery.

### Open Source

The Kubernetes/Cloud Native platform designed by the Cloud Native team was designed to be based on Open Source tooling. This comes from the  Open Source Directive as given by the Treasury Board Secretariat (C.2.3.8) which states where possible, use open standards and open source software first. Additionally, where possible expose all functionality as services (RESTFul) and leverage microservices via a containerized approach (C2.3.10). We are leveraging a microservices design pattern utilizing immutable images through containerization running on Kubernetes with a platform that has been built and open sourced by Statistics Canada.

#### Collaboration across the Government of Canada

We have collaborated with other Government of Canada departments on the development of our platform. Departments that we've most frequently worked with are the Canadian Digital Services (CDS) and Treasury Board Secretariat (TBS).

We have taught two instances of a Kubernetes/Cloud Native Introduction course at the Canada School of Public Service's Digital Academy.

And finally, we presented at the Government of Canada Cloud and DevOps conference, Stratosphere, in 2019 on the cloud platform.

##### Government of Canada Enterprise Architecture Review Board (GC EARB)

As part of our work with TBS on the Content Management System (CMS) project for a potential replacement of the Canada.ca tech stack, we presented our Kubernetes platform to the GC EARB. The GC EARB endorsed our platform and recommend that it be presented to the One GC council. It also raised interest from other GoC departments to work with us on the platform.

#### Industry

As part of our work on our platform, we have made contacts with industry professionals at Microsoft, IBM and Hashicorp. They have all expressed interest in the platform that we have developed and have offered their support to advancing it.

In one of these presentations, Vivian Nobrega, the Open Source Advocate for the Government of Canada, recognized our work on Twitter which was recognized by senior management at Statistics Canada.

#### The Open Community

We are working closely with the open community with our work. We have contributed fixes and improvements to various open source projects that we have investigated/used in the construction of our platform.

We also have shared our entire platform on the GC Accelerators, which has been successfuly utilized by others to launch our platform.

Provided in the Addendum is the Terraform (Infrastructure as Code) necessarily to install the Azure Kubernetes Service Infrastructure as well as configure with optional platform components (RBAC, Service Mesh, Policies, etc).

To highlight that this solution can run on any cloud service provider, we are currently working on support for the IBM Kubernetes Services given in the Addendum.

Finally, we are helping organized a Kubernetes Community Days event in Ottawa.

##### KubeCon/Cloud Native Con North America 2019

3 StatCan employees had an amazing opportunity to attend the KubeCon/Cloud Native Con North America 2019 in San Diego, CA. At the conference, we made many contacts within the Cloud Native field as well as collected lots of information about the tools that we're using.

At KubeCon, we discovered the U.S. Department of Defense's cloud platform that shared many similarities with the technologies that we had already chosen. Using this information, we looked at their documentation and are now using it to further advance the platform.

## Addendum

Confluence (Internal)

* [Digital Solutions Service Catalogue](https://confluence.example.ca)
* [Platform Team](https://confluence.example.ca)
* [Reading Materials](https://confluence.example.ca)
* [Onboarding to Kubernetes](https://confluence.example.ca)

PDF

* [Platform Documentation](https://govcloud.blob.core.windows.net/docs/azure-aks-platform.pdf)
* [Azure Reference Architecture](https://govcloud.blob.core.windows.net/docs/azure-aks-infra.pdf)
* [Digital Academy: Cloud Native Development](https://govcloud.blob.core.windows.net/docs/digital-academy.pdf)

Websites

* [Cloud Native Platform for Statistics Canada](https://govcloud.ca/)
* [US Department of Defense DevSecOps](https://software.af.mil/dsop/documents/)

YouTube

* [Digital Academy: Cloud Native Development](https://www.youtube.com/watch?v=QvMWls8OdmM)

GitHub (GC Accelerators)

* [Terraform for Kubernetes Infrastructure: Azure](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-aks)
* [Terraform for Kubernetes Platform: Azure](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-aks-platform)
* [Terraform for Kubernetes Infrastructure: IBM](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-iks)
* [Terraform for Kubernetes Platform: IBM](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-iks-platform)

> **Note:** There are 10+ other supporting repositories.

GitLab (Internal)

* [Helm Charts](https://gitlab.example.ca/cloudnative/charts/k8s)
* [Build Templates](https://gitlab.example.ca/cloudnative)
* [Cloud Native Org](https://gitlab.example.ca/cloudnative)
