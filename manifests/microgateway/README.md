# KidsLoop Microgateway Base Helm Chart

An helm chart to deploy a krakend instance in a kubernetes cluster

* Installs the api-gateway system [KrakenD](http://krakend.io/)

Assumes all configuration mounting will be done via dockerfile.

In order to use this helm chart, please make sure you supply your own `values.yaml` file.
The values in the `values.yaml` file in this repository are placeholders only and should
not be used in any environment.

## Adding charts as dependencies

Add the sub-chart as a git submodule

```sh
git submodule add <url>
```

Then add it as a dependency in your `Chart.yaml` file.

```yaml
dependencies:
  - name: kl-base-microgateway
    repository: file://../../dependencies/microgateway-base-helm
    version: 0.1.0
```

Finally run `helm dependency update`

## Original Source

[KrakenD Community Helm Chart](https://github.com/mikescandy/krakend-helm)

## TL;DR;

```console
$ helm install microgateway-base-helm
```

## Installing the Chart

To install the chart with the release name `my-release`:

```sh
helm install -f <values file>.yaml -n <namespace> <release name> .

# Example
helm install -f my-values.yaml -n shared-gateway shared-gateway-landing-zone .
```

## Uninstalling the Chart

To uninstall/delete the my-release deployment:

```console
helm uninstall <release-name> -n <namespace>

helm uninstall shared-gateway-landing-zone -n shared-gateway
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Upgrading an existing Release to a new major version

A major chart version change (like v1.2.3 -> v2.0.0) indicates that there is an
incompatible breaking change needing manual actions.

## Customizing the helm chart

Please see [values file](values.yaml) for all of the customization currently available
