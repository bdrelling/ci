# CI

This repository serves as a collection of my personal CI scripts, workflows, and actions.

I don't recommend you link to or depend upon any scripts or workflows in this repository directly, but please feel free to copy anything that might help you in your own projects.

## Monitor

This "monitor" provides act-a-glance CI statuses across all of my actively maintained repositories.

:warning: Don't look at the source code unless you want to throw up. Also, missing or broken images may just mean the repository is inaccessible to you.

> All GitHub Actions statuses are linked to the `main` branch.

### Websites

| Repository | Status | Deployment | Swift | Platforms |
| ---------- | ----- | ---------- | ----- | --------- |
| [briandrelling.com](https://github.com/bdrelling/briandrelling.com) | [![](https://github.com/bdrelling/briandrelling.com/actions/workflows/tests.yml/badge.svg)](https://github.com/bdrelling/briandrelling.com/actions/workflows/tests.yml) | [![](https://github.com/bdrelling/briandrelling.com/actions/workflows/deploy_website.yml/badge.svg)](https://github.com/bdrelling/briandrelling.com/actions/workflows/deploy_website.yml) | | |
| [instruments.fyi](https://github.com/bdrelling/instruments.fyi) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/instruments.fyi/tests.yml?branch=main&label=)](https://github.com/bdrelling/instruments.fyi/actions/workflows/tests.yml) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/instruments.fyi/deploy_website.yml?branch=main&label=)](https://github.com/bdrelling/instruments.fyi/actions/workflows/deploy_website.yml) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2Finstruments.fyi%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/instruments.fyi) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2Finstruments.fyi%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/instruments.fyi) |

### Libraries

#### Apple + Linux

| Repository | Tests | Version | Swift | Platforms |
| ---------- | ----- | ------- | ----- | --------- |
| [GoatHerb](https://github.com/bdrelling/GoatHerb) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/GoatHerb/tests.yml?branch=main&label=)](https://github.com/bdrelling/GoatHerb/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/GoatHerb?color=blue&label=)](https://github.com/bdrelling/GoatHerb/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FGoatHerb%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/GoatHerb) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FGoatHerb%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/GoatHerb) |
| [InstrumentKit](https://github.com/bdrelling/InstrumentKit) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/InstrumentKit/tests.yml?branch=main&label=)](https://github.com/bdrelling/InstrumentKit/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/InstrumentKit?color=blue&label=)](https://github.com/bdrelling/InstrumentKit/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FInstrumentKit%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/InstrumentKit) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FInstrumentKit%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/InstrumentKit) |
| [Kipple](https://github.com/bdrelling/Kipple) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/Kipple/tests.yml?branch=main&label=)](https://github.com/bdrelling/Kipple/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/Kipple?color=blue&label=)](https://github.com/bdrelling/Kipple/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKipple%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/Kipple) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKipple%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/Kipple) |
| [KippleNetworking](https://github.com/bdrelling/KippleNetworking) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/KippleNetworking/tests.yml?branch=main&label=)](https://github.com/bdrelling/KippleNetworking/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/KippleNetworking?color=blue&label=)](https://github.com/bdrelling/KippleNetworking/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKippleNetworking%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/KippleNetworking) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKippleNetworking%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/KippleNetworking) |
| [KipplePlugins](https://github.com/bdrelling/KipplePlugins) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/KipplePlugins/tests.yml?branch=main&label=)](https://github.com/bdrelling/KipplePlugins/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/KipplePlugins?color=blue&label=)](https://github.com/bdrelling/KipplePlugins/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKipplePlugins%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/KipplePlugins) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKipplePlugins%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/KipplePlugins) |
| [KippleTools](https://github.com/bdrelling/KippleTools) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/KippleTools/tests.yml?branch=main&label=)](https://github.com/bdrelling/KippleTools/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/KippleTools?color=blue&label=)](https://github.com/bdrelling/KippleTools/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKippleTools%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/KippleTools) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKippleTools%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/KippleTools) |
| [KippleUI](https://github.com/bdrelling/KippleUI) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/KippleUI/tests.yml?branch=main&label=)](https://github.com/bdrelling/KippleUI/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/KippleUI?color=blue&label=)](https://github.com/bdrelling/KippleUI/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKippleUI%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/KippleUI) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FKippleUI%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/KippleUI) |

#### Vapor

| Repository | Tests | Version | Swift | Platforms |
| ---------- | ----- | ------- | ----- | --------- |
| [DocCMiddleware](https://github.com/bdrelling/DocCMiddleware) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/DocCMiddleware/tests.yml?branch=main&label=)](https://github.com/bdrelling/DocCMiddleware/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/DocCMiddleware?color=blue&label=)](https://github.com/bdrelling/DocCMiddleware/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FDocCMiddleware%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/DocCMiddleware) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FDocCMiddleware%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/DocCMiddleware) |
| [PlotVapor](https://github.com/bdrelling/PlotVapor) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/PlotVapor/tests.yml?branch=main&label=)](https://github.com/bdrelling/PlotVapor/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/PlotVapor?color=blue&label=)](https://github.com/bdrelling/PlotVapor/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FPlotVapor%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/PlotVapor) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FPlotVapor%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/PlotVapor) |
| [Structure](https://github.com/bdrelling/Structure) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/Structure/tests.yml?branch=main&label=)](https://github.com/bdrelling/Structure/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/Structure?color=blue&label=)](https://github.com/bdrelling/Structure/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FStructure%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/Structure) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FStructure%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/Structure) |

### Other

#### Examples

| Repository | Tests | Version | Swift | Platforms |
| ---------- | ----- | ------- | ----- | --------- |
| [DocCMiddleware-Example](https://github.com/bdrelling/DocCMiddleware-Example) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/DocCMiddleware-Example/tests.yml?branch=main&label=)](https://github.com/bdrelling/DocCMiddleware-Example/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/DocCMiddleware-Example?color=blue&label=)](https://github.com/bdrelling/DocCMiddleware-Example/tags) | [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FDocCMiddleware%2Fbadge%3Ftype%3Dswift-versions&label=)](https://swiftpackageindex.com/bdrelling/DocCMiddleware) |  [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdrelling%2FDocCMiddleware%2Fbadge%3Ftype%3Dplatforms&label=)](https://swiftpackageindex.com/bdrelling/DocCMiddleware) |

#### Templates

| Repository | Tests | Version |
| ---------- | ----- | ------- |
| [Template-Swift](https://github.com/bdrelling/Template-Swift) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/Template-Swift/tests.yml?branch=main&label=)](https://github.com/bdrelling/Template-Swift/actions/workflows/tests.yml) | [![](https://img.shields.io/github/v/tag/bdrelling/Template-Swift?color=blue&label=)](https://github.com/bdrelling/Template-Swift/tags) |

#### Jobs

| Repository | Status |
| ---------- | ------ |
| [Auditor](https://github.com/bdrelling/Auditor) | [![](https://img.shields.io/github/actions/workflow/status/bdrelling/Auditor/audit.yml?branch=main&label=)](https://github.com/bdrelling/Auditor/actions/workflows/audit.yml) |

## Usage

You can get up and running by creating the following `tests.yml` file within the `.github/workflows` directory of your repository:

```yaml
name: Tests

on:
  # Allows you to manually dispath a workflow via the GitHub Actions UI.
  workflow_dispatch:
  # Triggers the workflow on every push to 'main'.
  push:
    branches: [main]
  # Triggers the workflow on every Pull Request where 'main' is the target branch.
  pull_request:
    branches: [main]

jobs:
  swift_test:
    # Reference the `swift_test.yml` workflow here.
    uses: bdrelling/ci/.github/workflows/swift_test.yml@main
    secrets:
      # Pass in the secrets you want to provide to the script.
      # Passing in CODECOV_TOKEN and setting code-coverage to true will submit coverage reports to codecov.io.
      CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }}
      # Passing in DISCORD_CI_WEBHOOK will send CI notifications to the associated Discord channel.
      DISCORD_CI_WEBHOOK: ${{ secrets.DISCORD_CI_WEBHOOK }}
    with:
      # This is the name of the scheme you want to run.
      scheme: Kipple-Package
      # If you have tests, use "test". If you don't have tests, use "build".
      subcommand: test
      # The platforms you want to test, which can cover the range of Apple platforms as well as Linux.
      platforms: iOS macOS tvOS watchOS Linux
      # Provide the Swift versions you want to test, or don't provide the key to use the default versions.
      # swift-versions: 5.9
      # If you have secrets.CODECOV_TOKEN set, you'll need to set this to true manually to submit coverage reports to codecov.io.
      code-coverage: true
```
