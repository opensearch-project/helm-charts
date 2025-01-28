# Data Prepper Helm Chart

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.8.0](https://img.shields.io/badge/AppVersion-2.8.0-informational?style=flat-square)

A Helm chart for Data Prepper

**Homepage:** <https://opensearch.org/docs/latest/data-prepper/>

Data Prepper is an essential component of the OpenSearch project, designed for high-volume data transformation and ingestion into OpenSearch. This Helm chart simplifies deploying Data Prepper on Kubernetes environments, ensuring you can easily set up your data processing pipelines.

## Requirements

Before installing the Data Prepper Helm chart, ensure your environment meets the following requirements:

* Kubernetes >= 1.14
* Helm >= 2.17.0
* We recommend having at least 4 GiB of memory available for this deployment. A minimum of 2 GiB may suffice, but less than that could lead to deployment failures.

## Installation

To install the Data Prepper Helm chart, follow these steps:

* Add the OpenSearch Helm repository if you haven't already:

```bash
helm repo add opensearch https://opensearch-project.github.io/helm-charts/
helm repo update
```

* Install the Data Prepper chart with:

```bash
helm install my-data-prepper-release opensearch/data-prepper
```

Replace my-data-prepper-release with your desired release name. When no explicit pipeline is defined, this will configure a demo pipeline using a random source and stdout sink.

## Configuration

The Data Prepper Helm chart comes with a variety of configuration options to tailor the deployment to your needs.
The default values are specified in the [values.yaml](values.yaml) file. You can override these values by providing your own `values.yaml` file during installation or by specifying configuration options with --set flags.

For a detailed list of configuration options, refer to the values.yaml file or the [Data Prepper documentation](https://opensearch.org/docs/latest/data-prepper/managing-data-prepper/configuring-data-prepper/).

## Uninstalling the Chart

To uninstall/delete the my-data-prepper deployment:

```bash
helm delete my-data-prepper
```

This command removes all the Kubernetes components associated with the chart and deletes the release.

## Contributing

We welcome contributions! Please read our [CONTRIBUTING.md](../../CONTRIBUTING.md) for details on how to submit contributions to this project.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| gaiksaya |  | <https://github.com/gaiksaya> |
| peterzhuamazon |  | <https://github.com/peterzhuamazon> |
| prudhvigodithi |  | <https://github.com/prudhvigodithi> |
| sergk |  | <https://github.com/sergk> |
| TheAlgo |  | <https://github.com/TheAlgo> |

## Source Code

* <https://github.com/opensearch-project/data-prepper>
* <https://github.com/opensearch-project/helm-charts>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| config | object | `{"data-prepper-config.yaml":"ssl: false\n# circuit_breakers:\n#   heap:\n#     usage: 2gb\n#     reset: 30s\n#     check_interval: 5s\n","log4j2-rolling.properties":"#\n# Copyright OpenSearch Contributors\n# SPDX-License-Identifier: Apache-2.0\n#\n\nstatus = error\ndest = err\nname = PropertiesConfig\n\nproperty.filename = log/data-prepper/data-prepper.log\n\nappender.console.type = Console\nappender.console.name = STDOUT\nappender.console.layout.type = PatternLayout\nappender.console.layout.pattern = %d{ISO8601} [%t] %-5p %40C - %m%n\n\nappender.rolling.type = RollingFile\nappender.rolling.name = RollingFile\nappender.rolling.fileName = ${filename}\nappender.rolling.filePattern = logs/data-prepper.log.%d{MM-dd-yy-HH}-%i.gz\nappender.rolling.layout.type = PatternLayout\nappender.rolling.layout.pattern = %d{ISO8601} [%t] %-5p %40C - %m%n\nappender.rolling.policies.type = Policies\nappender.rolling.policies.time.type = TimeBasedTriggeringPolicy\nappender.rolling.policies.time.interval = 1\nappender.rolling.policies.time.modulate = true\nappender.rolling.policies.size.type = SizeBasedTriggeringPolicy\nappender.rolling.policies.size.size=100MB\nappender.rolling.strategy.type = DefaultRolloverStrategy\nappender.rolling.strategy.max = 168\n\nrootLogger.level = warn\nrootLogger.appenderRef.stdout.ref = STDOUT\nrootLogger.appenderRef.file.ref = RollingFile\n\nlogger.pipeline.name = org.opensearch.dataprepper.pipeline\nlogger.pipeline.level = info\n\nlogger.parser.name = org.opensearch.dataprepper.parser\nlogger.parser.level = info\n\nlogger.plugins.name = org.opensearch.dataprepper.plugins\nlogger.plugins.level = info\n"}` | Data Prepper configuration |
| config."data-prepper-config.yaml" | string | `"ssl: false\n# circuit_breakers:\n#   heap:\n#     usage: 2gb\n#     reset: 30s\n#     check_interval: 5s\n"` | Main Data Prepper configuration file content |
| config."log4j2-rolling.properties" | string | `"#\n# Copyright OpenSearch Contributors\n# SPDX-License-Identifier: Apache-2.0\n#\n\nstatus = error\ndest = err\nname = PropertiesConfig\n\nproperty.filename = log/data-prepper/data-prepper.log\n\nappender.console.type = Console\nappender.console.name = STDOUT\nappender.console.layout.type = PatternLayout\nappender.console.layout.pattern = %d{ISO8601} [%t] %-5p %40C - %m%n\n\nappender.rolling.type = RollingFile\nappender.rolling.name = RollingFile\nappender.rolling.fileName = ${filename}\nappender.rolling.filePattern = logs/data-prepper.log.%d{MM-dd-yy-HH}-%i.gz\nappender.rolling.layout.type = PatternLayout\nappender.rolling.layout.pattern = %d{ISO8601} [%t] %-5p %40C - %m%n\nappender.rolling.policies.type = Policies\nappender.rolling.policies.time.type = TimeBasedTriggeringPolicy\nappender.rolling.policies.time.interval = 1\nappender.rolling.policies.time.modulate = true\nappender.rolling.policies.size.type = SizeBasedTriggeringPolicy\nappender.rolling.policies.size.size=100MB\nappender.rolling.strategy.type = DefaultRolloverStrategy\nappender.rolling.strategy.max = 168\n\nrootLogger.level = warn\nrootLogger.appenderRef.stdout.ref = STDOUT\nrootLogger.appenderRef.file.ref = RollingFile\n\nlogger.pipeline.name = org.opensearch.dataprepper.pipeline\nlogger.pipeline.level = info\n\nlogger.parser.name = org.opensearch.dataprepper.parser\nlogger.parser.level = info\n\nlogger.plugins.name = org.opensearch.dataprepper.plugins\nlogger.plugins.level = info\n"` | Log4j2 configuration for Data Prepper logging |
| extraEnvs | list | `[]` | Extra environment variables to pass to the Data Prepper container |
| fullnameOverride | string | `""` | Override the default fullname for the deployment |
| global.dockerRegistry | string | `""` | Set if you want to change the default docker registry, e.g. a private one. |
| image.pullPolicy | string | `"IfNotPresent"` | The image tag to pull. Default: IfNotPresent |
| image.repository | string | `"opensearchproject/data-prepper"` | The image repository from which to pull the Data Prepper image |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | List of imagePullSecrets to use if the Docker image is stored in a private registry |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` | Override the default name for the deployment |
| nodeSelector | object | `{}` |  |
| pipelineConfig | object | (See below) | Pipeline configuration |
| pipelineConfig.enabled | boolean | `false` | Enable inline configuration in `config` sub key. |
| pipelineConfig.config | object | `{}` | Pipeline configuration file inline if `enabled` is set to true |
| pipelineConfig.demoPipeline | boolean | "" | If set, a demo pipeline will be provisioned with source `random` and sink `stdout`. |
| pipelineConfig.existingSecret | string | `""` | The name of an existing secret containing the pipeline configuration. If enabled is false existingSecret is used. The existingSecret must have a key named `pipelines.yaml`. |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| initContainers | list | `[]` | Optional list of init containers for the pod | 
| ports | list | `[{"name":"http-source","port":2021},{"name":"otel-traces","port":21890},{"name":"otel-metrics","port":21891},{"name":"otel-logs","port":21892}]` | Data Prepper ports |
| ports[0] | object | `{"name":"http-source","port":2021}` | The port that the source is running on. Default value is 2021. Valid options are between 0 and 65535. https://opensearch.org/docs/latest/data-prepper/pipelines/configuration/sources/http-source/ |
| ports[1] | object | `{"name":"otel-traces","port":21890}` | The port that the otel_trace_source source runs on. Default value is 21890. https://opensearch.org/docs/latest/data-prepper/pipelines/configuration/sources/otel-trace-source/ |
| ports[2] | object | `{"name":"otel-metrics","port":21891}` | The port that the OpenTelemtry metrics source runs on. Default value is 21891. https://opensearch.org/docs/latest/data-prepper/pipelines/configuration/sources/otel-metrics-source/ |
| ports[3] | object | `{"name":"otel-logs","port":21892}` | Represents the port that the otel_logs_source source is running on. Default value is 21892. https://opensearch.org/docs/latest/data-prepper/pipelines/configuration/sources/otel-logs-source/ |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE.txt](../../LICENSE.txt) file for details.
