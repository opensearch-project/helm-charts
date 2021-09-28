
This Helm chart is a lightweight way to configure and run the official [OpenSearch Docker image](https://hub.docker.com/r/opensearchproject/opensearch).

- [Installing](#installing)
- [Usage notes](#usage-notes)
- [Configuration](#configuration)
- [Future](#Future)

## Installing

[OpenSearch Helm chart](https://opensearch.org/docs/opensearch/install/helm/)

[OpenSearch Dashboards Helm chart](https://opensearch.org/docs/dashboards/install/helm/)

## Usage Notes

* The chart deploys a StatefulSet and by default will do an automated rolling
  update of your cluster. It does this by waiting for the cluster health to become
  green after each instance is updated.
* It is important to verify that the JVM heap size in `opensearchJavaOpts` and
  to set the CPU/Memory `resources` to something suitable for your cluster.
* To simplify chart and maintenance each set of node groups is deployed as a
  separate Helm release. Without doing this it isn't possible to resize persistent
  volumes in a StatefulSet. By setting it up this way it makes it possible to add
  more nodes with a new storage size then drain the old ones. It also solves the
  problem of allowing the user to determine which node groups to update first when
  doing upgrades or changes.
* We have designed this chart to be very un-opinionated about how to configure
  OpenSearch. It exposes ways to set environment variables and mount secrets
  inside of the container. Doing this makes it much easier for this chart to
  support multiple versions with minimal changes.

## Configuration
TODO : Write about all the parameters used

## Future
* Create example for different types of configurations for different K8S providers.
* Have a chart for deploying the OpenSearch stack comprising OpenSearch and OpenSearch Dashboards
