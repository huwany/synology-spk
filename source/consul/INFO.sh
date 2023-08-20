#!/bin/bash
# Copyright (c) 2000-2023 Synology Inc. All rights reserved.

source /pkgscripts-ng/include/pkg_util.sh

package="consul"
version="1.16.1"
os_min_ver="7.0-40851"
thirdparty="yes"
arch="braswell"
reloadui="yes"
dsmuidir="ui"
dsmappname="com.hashicrop.consul"
silent_install="no"
silent_upgrade="no"
adminprotocol="http"
adminurl=""
adminport="4646"
install_dep_packages=""
changelog=""

maintainer="Hashicorp, Inc."
maintainer_url="https://www.hashicorp.com"

distributor="huwany"
distributor_url="https://github.com/huwany/synology-spk"

displayname="Consul"
description="Hashicorp Consul for Synology DSM"

app_download_link="https://releases.hashicorp.com/${package}/${version}"
app_download_file="${package}_${version}_linux_amd64.zip"
app_checksum_file="${package}_${version}_SHA256SUMS"

[ "$(caller)" != "0 NULL" ] && return 0

pkg_dump_info
