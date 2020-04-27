---
# "frontmatter"
title: "New page template" # Use sentence case for titles
# linkTitle: "Link for this page in the sidebar"
weight: 15 # Placement of the link in the sidebar
type: "docs"
# aliases:
# - /docs/example/redirect/moved-renamed-page
# - /docs/another-example
---

A properly written guide should fully explain its topic and provide a clear value proposition for the reader. Attempts should be made to illustrate how learning a particular topic X can benefit other areas for topics Y and Z.

At a minimum attempts should be made to answer the following questions:

- What does this guide show you how to do?
- Why would someone want to do this?

## Before you begin

You need:

- A Kubernetes cluster
- List other dependencies

## Logical break down

Where possible you should avoid nesting headings directly on top of each other with no text in-between.

1. Ordered lists for steps.
1. Step number two.
1. Step number three.

### Group related tasks into smaller sections

Again where possible avoid nesting headings directly on top of each other.

Place code into a annotated code block.

Small code snippet:

```sh
kubectl apply -f test.yaml
```

Additional code snippet:

```sh
kubectl apply -f test2.yaml
```

All code snippets should strive to add additional formatted comments describing how they work.

## Uninstall

If any part of your guide installs an application give detailed steps on how it can be uninstalled.

## What's next

Try to provide links for additional learning material.

- [Link](./page.md)
- [Link](./page.md)
- [Link](./page.md)
