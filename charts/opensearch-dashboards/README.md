# OpenSearch Dashboards Helm Chart

 This Helm chart installs [OpenSearch Dashboards](https://github.com/opensearch-project/OpenSearch-Dashboards) with configurable TLS, RBAC and much more configurations. This chart caters to a number of different use cases and setups.

 - [Requirements](#requirements)
 - [Installing](#installing)
 - [Uninstalling](#uninstalling)

 ## Requirements

 * Kubernetes >= 1.14
 * Helm >= 2.17.0
 * We recommend you to have 8 GiB of memory available for this deployment, or at least 4 GiB for the minimum requirement. Else, the deployment is expected to fail.

 ## Installing

 Once you've added this Helm repository as per the repository-level [README](../../README.md#installing)
 then you can install the chart as follows:

 ```shell
 helm install my-release opensearch/opensearch-dashboards
```

 The command deploys OpenSearch Dashboards with its associated components on the Kubernetes cluster in the default configuration.

 **NOTE:** If using Helm 2 then you'll need to add the [`--name`](https://v2.helm.sh/docs/helm/#options-21) command line argument. If unspecified, Helm 2 will autogenerate a name for you.

 ## Uninstalling
 To delete/uninstall the chart with the release name `my-release`:

 ```shell
 helm uninstall my-release
 ```
 