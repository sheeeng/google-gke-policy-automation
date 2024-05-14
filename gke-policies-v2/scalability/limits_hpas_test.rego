# Copyright 2022 Google LLC
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

package gke.scalability.hpas_test

import future.keywords.if
import data.gke.scalability.hpas

test_hpas_above_warn_limit if {
	not hpas.valid with input as {"data": {"monitoring": {"hpas": { "name": "hpas", "scalar": 254}}}}
}

test_hpas_below_warn_limit if {
	hpas.valid with input as {"data": {"monitoring": {"hpas": { "name": "hpas", "scalar": 180}}}}
}
