# Install and configure pandoc

## Installation

### Required packages

**Texlive**

```
sudo apt install texlive-base texlive-latex-base texlive-latex-extra texlive-lang-french texlive-fonts-recommended texlive-fonts-extra lmodern
```

**Pandoc (latest)**

Go to https://github.com/jgm/pandoc/releases/  
Download and install the latest stable release.

**Plantuml filter**

```
sudo apt install graphviz
pip install wheel pandoc-plantuml-filter
```

## Document metadata

At the root of the projet directory, create a `metadata.yaml` file with the following content:

```yaml
---
title: "My title"
subtitle: "My subtitle"
author: [author1]
lang: "fr-FR"
number-section: true
documentClass: memoir
date: "14/04/2020"
keywords: [some, keywords]
caption-justification: "justified"
titlepage: true
titlepage-rule-color: "777777"
titlepage-rule-height: 2
logo: "imageToUse.png"
logo-width: 120
toc: true
toc-own-page: true
numbersections: true
listings: true
```

You can tweak the values to your liking following the pandoc documentation.

## Document build script

The `build.sh` script can be used in two ways:

- one time build by running

```
./build.sh
```

- automatic build when a `.md` or `.yaml` file changes using `inotify-tools`

```
./build.sh --watch
```
