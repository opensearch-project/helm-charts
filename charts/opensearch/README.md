# OpenSearch Helm Chart

This Helm chart installs [OpenSearch](https://github.com/opensearch-project/OpenSearch) with configurable TLS, RBAC and much more configurations. This chart caters a number of different use cases and setups.

- [Requirements](#requirements)
- [Installing](#installing)
- [Uninstalling](#uninstalling)
- [Configuration](#configuration)

## Requirements

* Kubernetes >= 1.14
* Helm >= 2.17.0
* We recommend you to have 8 GiB of memory available for this deployment, or at least 4 GiB for the minimum requirement. Else, the deployment is expected to fail.

## Installing

Once you've added this Helm repository as per the repository-level [README](../../README.md#installing) then you can install the chart as follows:

 ```shell
 helm install my-release opensearch/opensearch
 ```

The command deploys OpenSearch with its associated components (data statefulsets, masters, clients) on the Kubernetes cluster in the default configuration.

**NOTE:** If using Helm 2 then you'll need to add the [`--name`](https://v2.helm.sh/docs/helm/#options-21) command line argument. If unspecified, Helm 2 will autogenerate a name for you.

## Uninstalling
To delete/uninstall the chart with the release name `my-release`:

```shell
helm uninstall my-release
```

## Configuration

| Parameter                          | Description                                                                                                                                                                                                                                               | Default                                         |
|------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| `antiAffinityTopologyKey`          | The [anti-affinity][] topology key. By default this will prevent multiple Opensearch nodes from running on the same Kubernetes node                                                                                                                    | `kubernetes.io/hostname`                        |
| `antiAffinity`                     | Setting this to hard enforces the [anti-affinity][] rules. If it is set to soft it will be done "best effort". Other values will be ignored                                                                                                               | `hard`                                          |
| `clusterName`                      | This will be used as the OpenSearch cluster name and should be unique per cluster in the namespace                                                                                                                                                 | `opensearch-cluster`                                 |
| `enableServiceLinks`               | Set to false to disabling service links, which can cause slow pod startup times when there are many services in the current namespace.                                                                                                                    | `true`                                          |
| `envFrom`                          | Templatable string to be passed to the [environment from variables][] which will be appended to the `envFrom:` definition for the container                                                                                                               | `[]`                                            |
| `config`                         | Allows you to add any config files in `/usr/share/opensearch/config/` such as `opensearch.yml` and `log4j2.properties`. See [values.yaml][] for an example of the formatting                                                                        | `{}`                                            |
| `opensearchJavaOpts`                        | Java options for OpenSearch. This is where you should configure the jvm heap size                                                                                                                                                             | `-Xmx1g -Xms1g`                                 |
| `majorVersion`                   | Used to set major version specific configuration. If you are using a custom image and not running the default OpenSearch version you will need to set this to the version you are running (e.g. `majorVersion: 1`)                                   | `""`                                            |
| `global.dockerRegistry`                  | Set if you want to change the default docker registry, e.g. a private one.                                                                                                                                           | `""`                                            |
| `extraContainers`                  | Array of extra containers                                                                                                                                           | `""`                                            |
| `extraEnvs`                        | Extra environments variables to be passed to OpenSearch services                                                                                                                           | `[]`                                            |
| `extraInitContainers`              | Array of extra init containers                                                                                                                                          | `[]`                                            |
| `extraVolumeMounts`                | Array of extra volume mounts                                                                                                                                       | `[] `                                           |
| `extraVolumes`                     | Array of extra volumes to be added                                                                                                                                                | `[]`                                            |
| `fullnameOverride`                 | Overrides the `clusterName` and `nodeGroup` when used in the naming of resources. This should only be used when using a single `nodeGroup`, otherwise you will have name conflicts                                                                        | `""`                                            |
| `hostAliases`                      | Configurable [hostAliases][]                                                                                                                                                                                                                              | `[]`                                            |
| `httpPort`                         | The http port that Kubernetes will use for the healthchecks and the service. If you change this you will also need to set `http.port` in `extraEnvs`                                                                                                    | `9200`                                          |
| `image.pullPolicy`                 | The Kubernetes [imagePullPolicy][] value                                                                                                                                                                                                                  | `IfNotPresent`                                  |
| `imagePullSecrets`                 | Configuration for [imagePullSecrets][] so that you can use a private registry for your image                                                                                                                                                              | `[]`                                            |
| `image.tag`                        | The OpenSearch Docker image tag                                                                                                                                                                                                                        | `1.0.0`                               |
| `image.repository`                 | The OpenSearch Docker image                                                                                                                                                                                                                            | `opensearchproject/opensearch` |
| `ingress`                          | Configurable [ingress][] to expose the OpenSearch service. See [values.yaml][] for an example                                                                                                                                                          | see [values.yaml][]                             |
| `initResources`                    | Allows you to set the [resources][] for the `initContainer` in the StatefulSet                                                                                                                                                                            | `{}`                                            |
| `keystore`                         | Allows you map Kubernetes secrets into the keystore.                                                                                                               | `[]`                                            |
| `labels`                           | Configurable [labels][] applied to all OpenSearch pods                                                                                                                                                                                                 | `{}`                                            |
| `masterService`                    | The service name used to connect to the masters. You only need to set this if your master `nodeGroup` is set to something other than `master`                                          | `""`                                            |
| `maxUnavailable`                   | The [maxUnavailable][] value for the pod disruption budget. By default this will prevent Kubernetes from having more than 1 unhealthy pod in the node group                                                                                               | `1`                                             |
| `nameOverride`                     | Overrides the `clusterName` when used in the naming of resources                                                                                                                                                                                          | `""`                                            |
| `networkHost`                      | Value for the `network.host OpenSearch setting`                                                                                                                                                                                                      | `0.0.0.0`                                       |
| `networkPolicy.create`             | Enable network policy creation for OpenSearch                              | `false`
| `nodeAffinity`                     | Value for the [node affinity settings][]                                                                                                                                                                                                                  | `{}`                                            |
| `nodeGroup`                        | This is the name that will be used for each group of nodes in the cluster. The name will be `clusterName-nodeGroup-X` , `nameOverride-nodeGroup-X` if a `nameOverride` is specified, and `fullnameOverride-X` if a `fullnameOverride` is specified        | `master`                                        |
| `nodeSelector`                     | Configurable [nodeSelector][] so that you can target specific nodes for your OpenSearch cluster                                                                                                                                                        | `{}`                                            |
| `persistence`                      | Enables a persistent volume for OpenSearch data.                                                                                      | see [values.yaml][]                             |
| `persistence.enableInitChown`      | Disable the `fsgroup-volume` initContainer that will update permissions on the persistent disk.                                                                                      | `true`                             |
| `podAnnotations`                   | Configurable [annotations][] applied to all OpenSearch pods                                                                                                                                                                                            | `{}`                                            |
| `podManagementPolicy`              | By default Kubernetes [deploys StatefulSets serially][]. This deploys them in parallel so that they can discover each other                                                                                                                               | `Parallel`                                      |
| `podSecurityContext`               | Allows you to set the [securityContext][] for the pod                                                                                                                                                                                                     | see [values.yaml][]                             |
| `podSecurityPolicy`                | Configuration for create a pod security policy with minimal permissions to run this Helm chart with `create: true`. Also can be used to reference an external pod security policy with `name: "externalPodSecurityPolicy"`                                | see [values.yaml][]                             |
| `priorityClassName`                | The name of the [PriorityClass][]. No default is supplied as the PriorityClass must be created first                                                                                                                                                      | `""`                                            |                                        |
| `rbac`                             | Configuration for creating a role, role binding and ServiceAccount as part of this Helm chart with `create: true`. Also can be used to reference an external ServiceAccount with `serviceAccountName: "externalServiceAccountName"`                       | see [values.yaml][]                             |
| `replicas`                         | Kubernetes replica count for the StatefulSet (i.e. how many pods)                                                                                                                                                                                         | `3`                                             |
| `resources`                        | Allows you to set the [resources][] for the StatefulSet                                                                                                                                                                                                   | see [values.yaml][]                             |
| `roles`                            | A list of the specific node [roles][] for the `nodeGroup`                                                                                                                                                                                                | see [values.yaml][]                             |
| `schedulerName`                    | Name of the [alternate scheduler][]                                                                                                                                                                                                                       | `""`                                            |
| `secretMounts`                     | Allows you easily mount a secret as a file inside the StatefulSet. Useful for mounting certificates and other secrets. See [values.yaml][] for an example                                                                                                 | `[]`                                            |
| `securityConfig`                   | Configure the opensearch security plugin. There are multiple ways to inject configuration into the chart, see [values.yaml][] details.                           | By default an insecure demonstration configuration is set. This **must** be changed before going to production. |
| `securityContext`                  | Allows you to set the [securityContext][] for the container                                                                                                                                                                                               | see [values.yaml][]                             |
| `service.annotations`              | [LoadBalancer annotations][] that Kubernetes will use for the service. This will configure load balancer if `service.type` is `LoadBalancer`                                                                                                              | `{}`                                            |
| `service.headless.annotations`     | Allow you to set annotations on the headless service                                                                                                                                                                                                      | `{}`                                            |
| `service.externalTrafficPolicy`    | Some cloud providers allow you to specify the [LoadBalancer externalTrafficPolicy][]. Kubernetes will use this to preserve the client source IP. This will configure load balancer if `service.type` is `LoadBalancer`                                    | `""`                                            |
| `service.httpPortName`             | The name of the http port within the service                                                                                                                                                                                                              | `http`                                          |
| `service.labelsHeadless`           | Labels to be added to headless service                                                                                                                                                                                                                    | `{}`                                            |
| `service.labels`                   | Labels to be added to non-headless service                                                                                                                                                                                                                | `{}`                                            |
| `service.loadBalancerIP`           | Some cloud providers allow you to specify the [loadBalancer][] IP. If the `loadBalancerIP` field is not specified, the IP is dynamically assigned. If you specify a `loadBalancerIP` but your cloud provider does not support the feature, it is ignored. | `""`                                            |
| `service.loadBalancerSourceRanges` | The IP ranges that are allowed to access                                                                                                                                                                                                                  | `[]`                                            |
| `service.nodePort`                 | Custom [nodePort][] port that can be set if you are using `service.type: nodePort`                                                                                                                                                                        | `""`                                            |
| `service.transportPortName`        | The name of the transport port within the service                                                                                                                                                                                                         | `transport`                                     |
| `service.type`                     | OpenSearch [Service Types][]                                                                                                                                                                                                                           | `ClusterIP`                                     |
| `sidecarResources`                 | Allows you to set the [resources][] for the sidecar containers in the StatefulSet                                                                                                                                                                         | {}                                              |
| `sysctlInitContainer`              | Allows you to disable the `sysctlInitContainer` if you are setting sysctl vm.max_map_count` with another method                                                                                                                                        | `enabled: true`                                 |
| `sysctlVmMaxMapCount`              | Sets the [vm.max_map_count][] needed for OpenSearch                                                                                                                                                                                            | `262144`                                        |
| `terminationGracePeriod`           | The [terminationGracePeriod][] in seconds used when trying to stop the pod                                                                                                                                                                                | `120`                                           |
| `tolerations`                      | Configurable [tolerations][]                                                                                                                                                                                                                              | `[]`                                            |
| `topologySpreadConstraints`        | Configuration for pod [topologySpreadConstraints][]                                                                                                                                                                                                       | `[]`                                            |
| `transportPort`                    | The transport port that Kubernetes will use for the service. If you change this you will also need to set transport port configuration in `extraEnvs`                                                                                                 | `9300`                                          |
| `updateStrategy`                   | The [updateStrategy][] for the StatefulSet. By default Kubernetes will wait for the cluster to be green after upgrading each pod. Setting this to `OnDelete` will allow you to manually delete each pod during upgrades                                   | `RollingUpdate`                                 |
| `volumeClaimTemplate`              | Configuration for the [volumeClaimTemplate for StatefulSets][]. You will want to adjust the storage (default `30Gi` ) and the `storageClassName` if you are using a different storage class                                                               | see [values.yaml][]                             |
| `extraObjects`                     | Array of extra K8s manifests to deploy                                                                                                                                                                                                                    | list `[]`                                       |



[anti-affinity]: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity

[environment from variables]: https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/#configure-all-key-value-pairs-in-a-configmap-as-container-environment-variables

[values.yaml]:https://github.com/opensearch-project/helm-charts/blob/main/charts/opensearch/values.yaml

[hostAliases]: https://kubernetes.io/docs/concepts/services-networking/add-entries-to-pod-etc-hosts-with-host-aliases/

[image.pullPolicy]: https://kubernetes.io/docs/concepts/containers/images/#updating-images
[imagePullSecrets]: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/
[ingress]: https://kubernetes.io/docs/concepts/services-networking/ingress/
[resources]: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/

[labels]: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/

[maxUnavailable]: https://kubernetes.io/docs/tasks/run-application/configure-pdb/#specifying-a-poddisruptionbudget

[node affinity settings]: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#node-affinity-beta-feature

[nodeSelector]: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector

[annotations]: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/

[deploys statefulsets serially]: https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/#pod-management-policies

[securityContext]: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/

[priorityClass]: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/#priorityclass

[roles]: https://opensearch.org/docs/opensearch/cluster/

[alternate scheduler]: https://kubernetes.io/docs/tasks/administer-cluster/configure-multiple-schedulers/#specify-schedulers-for-pods

[loadBalancer annotations]: https://kubernetes.io/docs/concepts/services-networking/service/#ssl-support-on-aws
[loadBalancer externalTrafficPolicy]: https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/#preserving-the-client-source-ip
[loadBalancer]: https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer
[maxUnavailable]: https://kubernetes.io/docs/tasks/run-application/configure-pdb/#specifying-a-poddisruptionbudget

[nodePort]: https://kubernetes.io/docs/concepts/services-networking/service/#nodeport

[nodeSelector]: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector

[vm.max_map_count]: https://opensearch.org/docs/opensearch/install/important-settings/

[terminationGracePeriod]: https://kubernetes.io/docs/concepts/workloads/pods/pod/#termination-of-pods
[tolerations]: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/

[updateStrategy]: https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/
[volumeClaimTemplate for statefulsets]: https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/#stable-storage

[service types]: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types

[topologySpreadConstraints]: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints
