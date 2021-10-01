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

![Testing](https://github.com/opensearch-project/helm-charts/workflows/Lint%20and%20Test%20Charts/badge.svg)
![Release](https://github.com/opensearch-project/helm-charts/workflows/Release%20Charts/badge.svg)

## Installation

```shell
helm repo add opensearch https://opensearch-project.github.io/helm-charts/
helm repo update
```

You can then run `helm search repo opensearch` to see the charts.

## Change Logs

Please review the [OpenSearch](charts/opensearch/CHANGELOG.md) and the
[OpenSearch Dashboards](charts/opensearch/CHANGELOG.md) change logs for the latest 
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
