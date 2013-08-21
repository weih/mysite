require './app.rb'
require 'sass/plugin/rack'

use Sass::Plugin::Rack
Sass::Plugin.options[:css_location] = './public/css'

run Site::App
