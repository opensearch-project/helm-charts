# Release process

Releases are driven by git tags, one per chart, each versioned independently:

* `opensearch-<chart-version>` (e.g. `opensearch-2.38.0`): OpenSearch Helm chart release.
* `opensearch-dashboards-<chart-version>` (e.g. `opensearch-dashboards-2.34.0`): OpenSearch Dashboards Helm chart release.
* `data-prepper-<chart-version>` (e.g. `data-prepper-0.3.1`): Data Prepper Helm chart release.

To release:

1. Fold the chart's `changeset/` fragments into `CHANGELOG.md` under the new version, delete the fragments, bump `Chart.yaml` `version` (and `appVersion` if applicable), and merge it. _(Maintainer)_
2. Cut and push the `<chart>-<version>` tag on the release commit ([example request](https://github.com/opensearch-project/.github/issues/657)). _(Admin)_
3. Package the chart, create a pre-release with the `.tgz` attached, and open a `gh-pages` PR updating `index.yaml`. _(Workflow)_
4. Merge the `gh-pages` PR. The chart is not served until merged. _(Maintainer)_
5. Edit the pre-release, add notes, and mark it as a normal release. _(Maintainer)_

Tags and releases are immutable. To fix a mistake, cut a new version.
