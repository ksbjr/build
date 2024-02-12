#
# SPDX-License-Identifier: GPL-2.0
# Copyright (c) 2023 Ricardo Pardini <ricardo@pardini.net>
# This file is a part of the Armbian Build Framework https://github.com/armbian/build/
#

# Shared versioning logic for Armbian mainline kernels.
function mainline_kernel_decide_version__upstream_release_candidate_number() {
	[[ -n "${KERNELBRANCH}" ]] && return 0          # if already set, don't touch it; that way other hooks can run in any order
	if [[ "${KERNEL_MAJOR_MINOR}" == "6.8" ]]; then # @TODO: roll over to next MAJOR.MINOR and MAJOR.MINOR-rc1 when it is released
		declare -g KERNELBRANCH="tag:v6.8-rc4"
		display_alert "mainline-kernel: upstream release candidate" "Using KERNELBRANCH='${KERNELBRANCH}' for KERNEL_MAJOR_MINOR='${KERNEL_MAJOR_MINOR}'" "info"
	fi
}

### Last hooks, defaults to branch if not set by previous hooks. Use mainline_kernel_decide_version__900 or higher.
function mainline_kernel_decide_version__900_defaults() {
	[[ -n "${KERNELBRANCH}" ]] && return 0                         # if already set, don't touch it; that way other hooks can run in any order
	declare -g KERNELBRANCH="branch:linux-${KERNEL_MAJOR_MINOR}.y" # default to stable branch
	display_alert "mainline-kernel: default to branch / rolling stable version" "Using KERNELBRANCH='${KERNELBRANCH}' for KERNEL_MAJOR_MINOR='${KERNEL_MAJOR_MINOR}'" "info"
}
