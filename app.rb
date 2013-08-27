require 'sinatra/base'
require 'redcarpet'
require 'pstore'
require 'pry' if ENV['RACK_ENV'] == 'development'

module Sinatra
  module MarkdownRender
    def m(file)
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
      markdown.render(file)
    end
  end

  helpers MarkdownRender
end

module Site
  class App < Sinatra::Base
    helpers Sinatra::MarkdownRender

    set :articels_folder, "#{root}/articles"

    get '/' do
      @title = "Willmouse's Homepage"
      erb :index
    end
    get '/post/:post_name' do |post_name|
      "you are at #{post_name}"
    end
  end
end
