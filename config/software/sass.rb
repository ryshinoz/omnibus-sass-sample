name 'sass'
default_version 'stable'
gem_version = '3.4.3'

source :git => 'https://github.com/sass/sass.git'
relative_path 'sass'

env = {
  'PATH' => "#{install_dir}/embedded/bin:#{ENV['PATH']}"
}

build do
  command "bundle install", :env => env
  command "rake package", :env => env
  command "#{install_dir}/embedded/bin/gem install --no-ri --no-rdoc -l pkg/sass-#{gem_version}.gem", :env => env
  command "ln -fs #{install_dir}/embedded/bin/sass #{install_dir}/bin/sass", :env => env
end
