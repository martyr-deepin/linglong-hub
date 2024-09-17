#!/bin/bash
set -e

# 去掉 [*] 和 <*> 便于从 deb 复制 Build-Depends
pkgs=$(cat /dev/stdin | sed "s#\[[^]]\+]##g" | sed "s# <\w\+># #g" | tr ',' '|')

url=http://pools.uniontech.com/desktop-professional
distribution=eagle
components="main contrib"
arch=$(dpkg --print-architecture)

rm -rf ~/.aptly
aptly mirror create -ignore-signatures -architectures=$arch -filter="$pkgs" -filter-with-deps linglong-download-depend $url $distribution $components
aptly mirror update -ignore-signatures linglong-download-depend
find ~/.aptly/pool -type f
mkdir linglong || true
rm -r linglong/pool || true
mv ~/.aptly/pool linglong/pool