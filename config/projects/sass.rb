
name 'sass'
maintainer 'CHANGE ME'
homepage 'https://CHANGE-ME.com'

install_dir     '/opt/sass'
build_version   Omnibus::BuildVersion.semver
build_iteration 1

override :ruby, version: '2.1.1'
override :rubygems, version: '2.2.1'

# creates required build directories
dependency 'preparation'

# sass dependencies/components
# dependency 'somedep'
dependency 'ruby'
dependency 'rubygems'
dependency 'bundler'

dependency "sass"

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
