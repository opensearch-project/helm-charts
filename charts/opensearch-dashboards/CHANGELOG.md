# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---
## [Unreleased]
### Added
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.8.4]
### Added
- Healthchecks 
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.8.3]
### Added
- Template configmap content by tpl function
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.8.2]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- ingress helm validation error fix by removing additional hyphen
### Security
---
## [1.8.1]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- OpenSearch Dashboards fixed failure when ingress service port is a string (named port)
### Security
---
## [1.8.0]
### Added
- Updated OpenSearch Dashboard appVersion to 1.3.5.
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.7.4]
### Added
- Add lifecycle hooks for opensearch-dashboards charts
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.7.3]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- Opensearch dashboards ingress template to use values from provided config
### Security
---
## [1.7.2]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- Opensearch dashboard fix issue #295.
- Opensearch dashboard config map support both string and map format.
### Security
---
## [1.7.1]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- Opensearch dashboard config map format is restored with backward support of string format
### Security
---
## [1.7.0]
### Added
### Changed
- Updated OpenSearch Dashboard appVersion to 1.3.4.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.6.1]
### Added
### Changed
- Updated OpenSearch Dashboard appVersion to 1.3.3.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.6.0]
### Added
### Changed
- Changed version to 1.12.0 to use 1.x branch for all 1.x releases.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.5.1]
### Added
### Changed
- Change app version to use OpenSearch-Dashboards 1.3.2
### Deprecated
### Removed
### Fixed
### Security
---
## [1.4.1]
### Added
- Update `values.yaml` example to use the correct format for configs
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.4.0]
### Added
- Change app version to use OpenSearch-Dashboards 1.3.1
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.3.3]
### Added
### Changed
- Updated maintainer list
### Deprecated
### Removed
### Fixed
### Security
---
## [1.3.2]
### Added
- Added pod autoscaling capability.
- Added autoscaling configuration parameters in readme.
- Added autoscaling.yaml under templates.
### Changed
- Updated the chart version to 1.3.2
- Changed values.yaml to reflect autoscaling changes.
### Deprecated
### Removed
### Fixed
### Security
---
## [1.3.1]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- Fixed Ingress empty annotations of the opensearch-dashboards
### Security
---
## [1.3.0]
### Added
- Change app version to use OpenSearch-Dashboards 1.3.0
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.2.2]
### Added
- Add support for extra K8s manifests
- Added Configuration parameters in readme
### Changed
### Deprecated
### Removed
### Fixed
### Security
---
## [1.2.1]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- Fixed rendering of `opensearch-dashboard.yml` in `configmap.yaml`.
### Security

---
## [1.2.0]
### Added
### Changed
- Changed structure of `image` keys in `values.yaml` file to use helm's default (`image.repository`, `image.tag`, `image.pullPolicy`)
### Deprecated
### Removed
### Fixed
### Security

---
## [1.1.2]
### Added
### Changed
- Removed default imageTag from values.yaml to use Chart appVersion image tag by default.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.1.1]
### Added
### Changed
- Updated appVersion to 1.2.0
### Deprecated
### Removed
### Fixed
### Security

---
## [1.1.0]
### Added
- Added support for the `ingressClassName` field in the `Ingress` resource. This field is used to specify the Ingress class that should be used for the Ingress. Supported in Kubernetes 1.18 and greater as per [this](https://kubernetes.io/docs/concepts/services-networking/ingress/#deprecated-annotation) notice.
### Changed
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.8]
### Added
### Changed
- Updating the copyright header to reflect the apache-2.0 license.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.7]
### Added
- Add `extraVolumes` and `extraVolumeMounts`.
### Changed
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.6]
### Added
### Changed
- Change `appVersion` to `1.1.0`. OpenSearch Dashboards chart will have by default underlying image of `opensearchproject/opensearch-dashboards:1.1.0`
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.5]
### Added
### Changed
- Added [README.md](README.md).
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.4]
### Added
### Changed
- Amended installation instructions.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.2]

### Added
- Added this change log in compliance with [Keep A Change Log](https://keepachangelog.com/en/1.0.0/).

### Changed
- Incremented the version to `1.0.2`.

### Deprecated
### Removed
### Fixed
### Security

[Unreleased]: https://github.com/opensearch-project/helm-charts/compare/opensearch-dashboards-1.8.4...HEAD
[1.8.4]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.8.3...opensearch-1.8.4
[1.8.3]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.8.2...opensearch-1.8.3
[1.8.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.8.1...opensearch-1.8.2
[1.8.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.8.0...opensearch-1.8.1
[1.8.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.7.4...opensearch-1.8.0
[1.7.4]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.7.3...opensearch-1.7.4
[1.7.3]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.7.2...opensearch-1.7.3
[1.7.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.7.1...opensearch-1.7.2
[1.7.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.7.0...opensearch-1.7.1
[1.7.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.6.1...opensearch-1.7.0
[1.6.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.6.0...opensearch-1.6.1
[1.6.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.5.1...opensearch-1.6.0
[1.5.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.4.1...opensearch-1.5.1
[1.4.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.4.0...opensearch-1.4.1
[1.4.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.3.3...opensearch-1.4.0
[1.3.3]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.3.2...opensearch-1.3.3
[1.3.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.3.1...opensearch-1.3.2
[1.3.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.3.0...opensearch-1.3.1
[1.3.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.2.2...opensearch-1.3.0
[1.2.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.2.1...opensearch-1.2.2
[1.2.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.2.0...opensearch-1.2.1
[1.2.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.1.2...opensearch-1.2.0
[1.1.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.1.1...opensearch-1.1.2
[1.1.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.1.0...opensearch-1.1.1
[1.1.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.8...opensearch-1.1.0
[1.0.8]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.7...opensearch-1.0.8
[1.0.7]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.6...opensearch-1.0.7
[1.0.6]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.5...opensearch-1.0.6
[1.0.5]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.4...opensearch-1.0.5
[1.0.4]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.2...opensearch-1.0.4
[1.0.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-dashboards-1.0.1...opensearch-dashboards-1.0.2
