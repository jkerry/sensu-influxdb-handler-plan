pkg_name=sensu-influxdb-handler
pkg_origin=core
pkg_version="1.5"
pkg_maintainer="John Kerry <john@kerryhouse.net>"
pkg_license=("MIT")
pkg_source="https://github.com/nikkiki/sensu-influxdb-handler/releases/download/v$pkg_version/${pkg_name}_${pkg_version}_linux_amd64.tar.gz"
pkg_shasum="8fafc59544d60c0ad1efc2fc10e4213a42d81df3ccca6cf340f45fd37197f500"
pkg_deps=()
pkg_bin_dirs=(bin)
pkg_description="Sensu 2.0 Management Command Line Tool"
pkg_upstream_url="https://sensu.io"


do_build(){
  return 0
}

do_install() {
  build_line "Installing $pkg_name binary"
  chmod +x "$HAB_CACHE_SRC_PATH/$pkg_name"
  install -D "$HAB_CACHE_SRC_PATH/$pkg_name" "$pkg_prefix/bin/$pkg_name"
}
