# Helm Chart for Apache Airflow

This repo is an customized version of [Apache Airflow](https://airflow.apache.org/).

## Introduction

This chart will bootstrap an [Airflow](https://airflow.apache.org) deployment on a [Kubernetes](http://kubernetes.io)
cluster using the [Helm](https://helm.sh) package manager.
The version in this repo is 2.3.0

## Requirements

- Kubernetes 1.20+ cluster
- Helm 3.0+
- PV provisioner support in the underlying infrastructure (optionally)

## Features

* Supported executors: ``LocalExecutor``, ``LocalKubernetesExecutor``, ``CeleryExecutor``, ``CeleryKubernetesExecutor``, ``KubernetesExecutor``.
* Supported Airflow version: ``1.10+``, ``2.0+``
* Supported database backend: ``PostgresSQL``, ``MySQL``
* Autoscaling for ``CeleryExecutor`` provided by KEDA
* PostgreSQL and PgBouncer with a battle-tested configuration
* Monitoring:
   * StatsD/Prometheus metrics for Airflow
   * Prometheus metrics for PgBouncer
   * Flower
* Automatic database migration after a new deployment
* Administrator account creation during deployment
* Kerberos secure configuration
* One-command deployment for any type of executor. You don't need to provide other services e.g. Redis/Database to test the Airflow.

## Next steps:

- stablize the image, so it won't affected by future changes

