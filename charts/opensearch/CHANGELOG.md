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
## [1.2.4]
### Added
### Changed
- Change `appVersion` to `1.1.0` 
### Deprecated
### Removed
### Fixed
### Security

---
---
## [1.2.3]
### Added
- Support to disable the initContainer `fsgroup-volume` for chown updates.

---
## [1.2.2]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- [Issue #105](https://github.com/opensearch-project/helm-charts/issues/105) OpenSearch chart fails when RBAC is enabled.
### Security

---
## [1.2.1]
### Added
### Changed
### Deprecated
### Removed
### Fixed
- Missing `labels` key is added into role.yaml.
### Security

---
## [1.2.0]
### Added
### Changed
- Change labels of opensearch cart to match standard recommendations.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.1.0]
### Added
- Enable using externally created secret for securityConfig.
### Changed
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.8]
### Added
### Changed
- Amended the installation instructions in the `OpenSearch` Helm chart [README](README.md).
- Amended status badges to GitHub-generated markdown.
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.6]

### Added
- Added the ability to define plugins on node startup via plugins.enabled option.

### Changed
- Incremented the version to `1.0.6`.


---
## [1.0.5]
### Added
- In opensearch chart config to set the docker registry for images is added.
### Changed
### Deprecated
### Removed
### Fixed
### Security

---
## [1.0.5]
### Added
### Changed
- Added [Usage Notes](README.md#usage-notes) to `README.md` and amended installation instructions.
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
- [ISSUE-65](https://github.com/opensearch-project/helm-charts/issues/65): Incorrect indentation for `extraVolumeMounts`, `extraEnvs`, `envFrom` in `statefulset.yaml`.
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

[Unreleased]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.2.2...HEAD
[1.2.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.2.1...opensearch-1.2.2
[1.2.1]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.2.0...opensearch-1.2.1
[1.2.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.1.0...opensearch-1.2.0
[1.1.0]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.8...opensearch-1.1.0
[1.0.8]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.7...opensearch-1.0.8
[1.0.7]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.6...opensearch-1.0.7
[1.0.6]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.5...opensearch-1.0.6
[1.0.5]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.4...opensearch-1.0.5
[1.0.4]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.2...opensearch-1.0.4
[1.0.2]: https://github.com/opensearch-project/helm-charts/compare/opensearch-1.0.1...opensearch-1.0.2
