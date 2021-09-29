<img src="https://opensearch.org/assets/brand/SVG/Logo/opensearch_logo_default.svg" height="64px"/>

- [OpenSearch Project Helm-Charts](#helm-charts)
- [Status](#status)
- [Installation](#installation)
- [Change Logs](#change-logs)
- [Contributing](#contributing)
- [Getting Help](#getting-help)
- [Code of Conduct](#code-of-conduct)
- [Security](#security)
- [License](#license)

## Helm-Charts

A community repository for Helm Charts of OpenSearch Project.

## Status

[![Lint and Test Charts](https://github.com/opensearch-project/helm-charts/actions/workflows/lint-test.yaml/badge.svg)](https://github.com/opensearch-project/helm-charts/actions/workflows/lint-test.yaml)
[![Release Charts](https://github.com/opensearch-project/helm-charts/actions/workflows/release.yaml/badge.svg)](https://github.com/opensearch-project/helm-charts/actions/workflows/release.yaml)

## Installation

To install the OpenSearch Helm charts, execute the following commands:

```shell
helm repo add opensearch https://opensearch-project.github.io/helm-charts/
helm repo update
```

Once the charts repository reference is added, you can run the following command to see the charts.

```shell
helm search repo opensearch
```

## Change Logs

Please review the [OpenSearch](charts/opensearch/CHANGELOG.md) and the
[OpenSearch Dashboards](charts/opensearch-dashboards/CHANGELOG.md) change logs for the latest 
release details.

## Contributing

See [developer guide](DEVELOPER_GUIDE.md) and [how to contribute to this project](CONTRIBUTING.md). 

## Getting Help

If you find a bug, or have a feature request, please don't hesitate to open an issue in this repository.

For more information, see [project website](https://opensearch.org/) and [documentation](https://opensearch.org/docs). If you need help and are unsure where to open an issue, try [forums](https://discuss.opendistrocommunity.dev/).

## Code of Conduct

This project has adopted the [Amazon Open Source Code of Conduct](CODE_OF_CONDUCT.md). For more information see the [Code of Conduct FAQ](https://aws.github.io/code-of-conduct-faq), or contact [opensource-codeofconduct@amazon.com](mailto:opensource-codeofconduct@amazon.com) with any additional questions or comments.

## Security

If you discover a potential security issue in this project we ask that you notify AWS/Amazon Security via our [vulnerability reporting page](http://aws.amazon.com/security/vulnerability-reporting/). Please do **not** create a public GitHub issue.

## License

This project is licensed under the [Apache v2.0 License](LICENSE.txt).
