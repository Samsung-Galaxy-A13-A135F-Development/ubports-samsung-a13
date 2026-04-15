#!/bin/bash

#
# SPDX-License-Identifier: GPL-2.0-only
#

set -xe

export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export TARGET_SOC=exynos850
export LLVM_IAS=1

[ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools build
./build/build.sh "$@"
