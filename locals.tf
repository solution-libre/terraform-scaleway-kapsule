# Copyright 2020-2023 Particule.io
# Copyright 2024-2025 Solution Libre
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

locals {
  node_pools_defaults_defaults = {
    use_random_pet_suffix = true
    node_type             = "GP1-XS"
    autohealing           = true
    autoscaling           = true
    tags                  = []
    wait_for_pool_ready   = true
    container_runtime     = "containerd"
  }

  node_pools_defaults = merge(
    local.node_pools_defaults_defaults,
    var.node_pools_defaults
  )

  node_pools = { for k, v in var.node_pools : k => merge(
    local.node_pools_defaults,
    v
    )
  }
}
