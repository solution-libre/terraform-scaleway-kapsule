# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- markdownlint-configure-file { "MD024": { "siblings_only": true } } -->

## [8.1.0]

### Added

- From upstream changes since [v7.1.1](https://github.com/particuleio/terraform-scaleway-kapsule/compare/v7.1.1...v7.3.0)
  - Cluster
    - Autoscaler configuration
      - Support log_level
      - Support skip_nodes_with_local_storage
  - Node pools
    - Support security groups (v7.3.0)
    - Support for root_volume_* variables (v7.2.1)

### Changed

- Rebase the fork on upstream v7.3.0 (previously based on v7.1.1)
- Minimum Scaleway provider version is now `~> 2.76`

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

[8.1.0]: https://usine.solution-libre.fr/french-high-availability-multi-cloud-hosting/terraform-modules/scaleway-kapsule/-/compare/8.0.0...8.1.0
[8.0.0]: https://usine.solution-libre.fr/french-high-availability-multi-cloud-hosting/terraform-modules/scaleway-kapsule/-/tags/v8.0.0
