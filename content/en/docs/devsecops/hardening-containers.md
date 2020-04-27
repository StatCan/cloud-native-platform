---
title: "Hardening Containers"
linkTitle: "Hardening containers"
weight: 50
type: "docs"
draft: false
---

## Introduction

Following the creation of the DevSecOps Initiative, this document was created to detail the Container Hardening Process to ensure it meets the [Hardened Containers Cybersecurity Requirements](#cybersecurity-requirements).

To check our public repository, please check: **not yet publicly available**

> **Note**: This document focuses on container security. It is understood that any application code or library must be scanned by static/dynamic code analysis tools prior to being integrated into a container and must pass those scans.

## Architecture and Definitions

### Hardened Containers (HC)

A hardened container is an Open Container Image (OCI) compliant image that is secured and made compliant with the [Hardened Containers Cybersecurity Requirements](#cybersecurity-requirements). Container images should adhere to the OCI Image Format Specification to ensure portability whenever possible.

### Hardened Container Team (HCT)

The Hardened Container Team is responsible for the assessing and hardening of containers. The team is composed of DevOps Engineers and other container experts that have knowledge of the product being hardened and that understand the [Hardened Containers Cybersecurity Requirements](#cybersecurity-requirements). A single team member is called a Hardener.

A Hardener will require the following:

* Expertise in OCI compliant container images, including writing compliant Dockerfile(s)
* Expertise in the [Hardened Containers Cybersecurity Requirements](#cybersecurity-requirements)
* Good understanding of [jFrog Artifactory][jfrog_artifactory] / [XRay][jfrog_artifactory] (Private) and [Trivy][trivy] (Public)

### Container Factory (CF)

To automate the Hardening Process, Statistics Canada has stood up a DevSecOps platform to setup the Continuous Integration/Continuous Delivery (CI/CD) pipeline leveraged to automate the container hardening process. An open source implementation of this platform is in the work using GitHub Actions and open source tooling such as [Trivy][trivy].

### Centralized Container Source Code Repository (CCSCR)

To store the Hardened Containers and any additional relevant documentation a source code repository has been centrally hosted so Hardeners can store their code and leverage an automated CI/CD pipeline. To see how to on-board your containers into CCSCR, please consult our documentation.

https://gitlab.example.ca/cloudnative/contributor-onboarding

### Centralized Artifacts Repository (CAR)

To store the Hardened Containers, a centralized artifacts repository is being leveraged on a GoC Approved Cloud certified Protected B which provides access to the Hardened Containers.

The artifact repository supports both files (traditional artifacts) and containers along with a container registry itself. In addition, the artifacts repository provides a secure mechanism to store, track, and sign, and distribute approved containers.

> **Note**: Currently we leverage [jFrog Artifactory][jfrog_artifactory] as our approved centralized Artifacts Repository.

### Approved CI/CD Orchestration Solution (ACCOS)

To build a proper CI/CD pipeline, an orchestration solution is needed along with the appropriate set of guard rails built right in. Currently one of the approved solutions is comprised of tools such as Jenkins, GitLab, Artifactory / XRay and SonarQube. All of which will be containerized and offered in a hardened variant.

### Base Container Image Approved Sources (BCIAS)

To ensure container base images are sourced from approved sources, a container base image must be downloaded from a Container Base Image Approved Source.

Please check the [Selecting the container base image](#selecting-the-container-base-image) section of this document to understand how to select your base image.

The following sources are currently approved and should be used in order of priority:

**Trusted**

* Centralized Artifacts Repository (CAR) (trusted)

**Untrusted**

* Product Vendor proprietary repository (untrusted)
* Docker Hub (untrusted)
* Red Hat Container Repository (untrusted)

> **Note**: A Product Vendor repository can only be used if a Memorandum of Understanding (MOU) is signed between the GoC and the vendor to ensure access to base images and their updates.

A trusted repository means that the containers were already hardened by the Hardening team and can be used as is.

## Container Hardening Process

### Selecting the container base image

When selecting the appropriate container base image to leverage the key recommendations provided below will be followed.

* Always prioritize the use of the base image from its vendor or its open source community so you can be directly coupled with their updates. If you need to enhance the file, just create a Dockerfile which uses the base image with the FROM instruction.
* Modify, if need be, the FROM instruction so the Dockerfile uses a GoC hardened base container image whenever available. For example, if an application uses the Docker Hub JDK image, ensure the FROM instruction is replaced by the hardened JDK base image instead.
* Use base images that reuse the "closest" hardened image available to inherit its hardening: for example, if you use a Java application, use the base image of GoC hardened JDK and not the GoC hardened OS so you inherit all the hardened code of JDK as well and don’t have to re-harden JDK.
* If you have multiple source options/tags/variants for your base image, ensure you scan them with either jFrog XRay (private) and/or Trivy (public) to understand security risks associated with each image and select the image most closely aligned with GoC [Hardened Containers Cybersecurity Requirements](#cybersecurity-requirements).
* If the base image has security flaws, first try using it as a base image in your own Dockerfile and mitigating the flaw by overriding. If that is impossible, you will have to fork the base image and remove the library/issue used to pass scan results or simply accept its risk.

> **Note:**: It is highly recommended to have the GoC Enterprise DevSecOps team review and agree of the selection of a base image.

### Process

It is important to understand that containers will inherit many security controls of the underlying PaaS solution, assuming the underlying host OS has been hardened per agency specific security guidelines (see Appendix A).

When selecting a base image and/or hardening a container image - there are a series of best practice considerations prior to engaging the hardening pipeline (see Appendix B).

It is important to select the proper base images, see instructions above [Selecting the container base image](#selecting-the-container-base-image).

### Automated Hardening of New Releases

The hardening process will be fully automated so that when a new image is released that is detected by the CI/CD pipeline, the pipeline will download any new artifacts/binaries, Dockerfile updates, and run the steps mentioned above, triggered automatically. The pipeline will attempt to search for new base images and automatically run a new hardening pipeline and notify the team if a build fails.

> **Note:** For vendors, we will only ever pull binaries/artifacts from you.

### Third Party Container Sharing

Third parties must provide complete Dockerfile and other necessary scripts or artifacts so they can be ingested into the CCSCR.

> **Note:** Docker Binary files will not be accepted if the Dockerfile isn't provided in order for us to replicate the build. The goal is to integrate existing Dockerfile into the Hardening process and the CCSCR so the new containers can benefit from the same automation.

## Hardened Containers Cybersecurity Requirements

### Cybersecurity Requirements

**Comply with initial and ongoing GoC Cybersecurity accreditation regulations / frameworks:**

* Please make sure that the container base OS image that you are using has been hardened
* Risk Management Framework (RMF) process and required documentation
* Compliant against the Center for Internet Security (CIS) Docker Benchmark
* ITSG-33 has minimal guidance so will defer to NIST
* Leverage both [NIST SP 800-53][nist_sp_800] moderate controls and [NIST 800-190][nist_sp_800] as guidance

**Documentation:**

* Generate and automate necessary documentation for Risk Management
* RMF Controls
* Data Flows

Enable TLS on all PaaS tools that have UI or send data. HTTP will be disabled and FIPS 140.2 used.

Where authentication and authorization is required, leverage GoC ADFS authentication.

Whenever possible, prohibit processes and containers from running as root.

### Hardening Container Risk Acceptable

Process created to accept specific risk of a cybersecurity findings that cannot be remediated at the time. This will be evaluated on a case by case basic and handled by the platform authorization officer.

### Active Directory / Common Access Card Integration Requirements

Active Directory Domain Services (AD DS) provides a centralized, delegated administrative model and single sign-on (SSO) capabilities to an organization.  Active Directory stores information about objects on the network and makes this information available for administrators and users to find and use. Active Directory uses a structured data store as the basis for a logical, hierarchical organization of directory information.

It is imperative that any Protected B and above environment use MFA authentication for any UI based authentication (such as a backend or dashboard). For Non Person Entity (NPO) such as communication between services, signed certificates can be used and PKI can be leveraged.

The Single Sign On (SSO) should be fully integrated with the GoC ADFS that is currently being used.

## Appendix A

### Security Control Inheritance (PaaS / Platform Host)

PaaS providers rely on technical concepts such as process isolation, service routing, redundancy, firewall controls, and many other security layers. In practice, these controls typically align with Government security concepts out-of-the-box. At the moment the Government of Canada has certified the following cloud providers as Protected B compliant.

* Amazon
* Azure
* Google
* IBM

> **Note**: While a cloud provider might be protected b compliant it doesn't mean that the various types services offerred are also compliant.

It is important to add that additional security overlays provided by the [Canadian Center for Cyber Security][cccs] and the [Center for Internet Security controls][cis] should always be leveraged (ITSG-33, CIS, etc) and constantly reassessed on a yearly interval.

With a properly locked down hosting environment containers inherit most of the security controls and benefits from infrastructure to host OS level remediation requirements. The focus then shifts to container and application security requirements (i.e. static code analysis, code linting, CVE testing).

## Appendix B

### Container Security/Remediation Considerations

Always automate all container hardening processes leveraging CI/CD pipelines whenever possible. Manual processes should never be used in order to minimize operational concerns.

When not using offially supported containers from trusted vendors (jFrog, GitLab, Hashicorp) you should always select a proper base image by following the instructions under the [Selecting the container base image](#selecting-the-container-base-image) section of this document.

For example:

* If a container requires a base OS (such as alpine), the hardened base image of this OS must be used
* If a container needs a JDK such a for a Java application you should consider using a Distroless image

[cccs]:              https://cyber.gc.ca/en/path-enterprise-security
[cis]:               https://www.cisecurity.org/controls/
[jfrog_artifactory]: https://jfrog.com/artifactory
[jfrog_xray]:        https://jfrog.com/xray
[trivy]:             https://github.com/aquasecurity/trivy
[nist_sp_800]:       https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-190.pdf
