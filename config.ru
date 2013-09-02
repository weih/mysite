require './app.rb'
require 'sass/plugin/rack'

# use BetterErrors::Middleware
use Sass::Plugin::Rack

Sass::Plugin.options[:css_location] = './public/css'
# BetterErrors.application_root = __dir__

run Site::App
