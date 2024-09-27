#!/bin/bash

TOPDIR=$(pwd)

# This script can be use to create the build environment

function exit_error() {
    echo "Error: $1"
    exit 1
}

# Clone all needed repository
YOCTO_BRANCH=kirkstone
git submodule init
git submodule update

# Install build tools
source ${TOPDIR}/poky/oe-init-build-env ||exit_error "failed to source build environment"
${TOPDIR}/poky/scripts/install-buildtools || exit_error "failed to install build tools"
