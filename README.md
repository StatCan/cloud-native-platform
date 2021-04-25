# Website

[Docsy](https://github.com/google/docsy) is a Hugo theme for technical documentation sites, providing easy site
navigation, structure, and more.

> This Docsy derived project is hosted at [https://govcloud.ca/](https://govcloud.ca/). You can find detailed theme instructions in the Docsy user guide: https://docsy.dev/docs/

## Cloning

The following will give you a project that is set up and ready to use (don't forget to use `--recurse-submodules` or you
won't pull down some of the code you need to generate a working site). The `hugo server` command builds and serves the
site. If you just want to build the site, run `hugo` instead.

```sh
git clone --recurse-submodules --depth 1 https://github.com/statcan/cloud-native-platform.git
hugo server --environment local
```

The theme is included as a Git submodule:

```sh
▶ git submodule
9fb4d1b... themes/docsy (heads/master)
```

If you want to do SCSS edits and want to publish these, you need to install `PostCSS` (not needed for `hugo server`):

```sh
npm install
```

## Running the website locally

Once you've cloned the site repo, from the repo root folder, run:

```sh
hugo server --environment local
```

## Acknowledgements

Thanks to the following projects for showing us how to clearly architect a docsy project:

* [Knative](https://knative.dev)
* [Docsy Example](https://github.com/google/docsy-example)
* [Cloud Platform User Guide](https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide)
