# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- markdownlint-configure-file { "MD024": { "siblings_only": true } } -->

## [Unreleased]

### Added

- `log_level` and `skip_nodes_with_local_storage` options to the `autoscaler_config` input variable,
exposing the matching `scaleway_k8s_cluster` autoscaler arguments

## [8.0.0] - 2025-08-20

### Added

- `private_network_id` input variable to set the ID of the private network the cluster is associated with
- `public_ip_disabled`, `root_volume_size_in_gb`, `root_volume_type` and `security_group_id` parameters of
`scaleway_k8s_pool` resource

### Changed

- Fork from <https://github.com/particuleio/terraform-scaleway-kapsule/>
- Bump `kubernetes_version` input variable default value from "1.24.5" to "1.32.3"
- Change the type of `node_pools_defaults` from `map(any)` to `any`

### Fixed

- Wrong variable type for maintenance window day

[8.0.0]: https://usine.solution-libre.fr/french-high-availability-multi-cloud-hosting/terraform-modules/scaleway-kapsule/-/tags/v8.0.0
