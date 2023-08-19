# Packaging spk for Synology DMS.

## Summary
* Synology:
  ```txt
  DSM 7.0+
  ```  
* Build server:
  ```txt
  Ubuntu Server 20.04+
  ```
* Release CI:
  ```txt
  this repo intergrated the Github Action, the release spk files can be found in below link once synology-spk/source/{APP} directory updated.
  https://github.com/huwany/synology-spk/releases
  ```

## Build package in local environment
* install prerequisite packages:
  ```bash
  apt update
  apt install -y build-essential git imagemagick cifs-utils python3 python3-pip rsync
  ```
* Synology toolkit framework
  This package is depend on Synology toolkit framework.
  This package is a template package, users can modify this package to generate their own packages.
  Please setup the toolkit by following [pkgscripts-ng](https://github.com/SynologyOpenSource/pkgscripts-ng)
  * mkdir /opt/synology
  * cd /opt/synology
  * git clone https://github.com/SynologyOpenSource/pkgscripts-ng.git
  * cd /opt/synology/pkgscripts-ng/
  * git checkout DSM7.2
  * /opt/synology/pkgscripts-ng/EnvDeploy -v 7.2 -p braswell
  * cd /opt/synology
  * git clone https://github.com/huwany/synology-spk.git
  * cp -av synology-spk/source /opt/synology/source
  * /opt/synology/pkgscripts-ng/PkgCreate.py -v 7.2 -p braswell -c consul
  * find the spk files at /opt/synology/result_spk
