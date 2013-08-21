require 'sinatra/base'
require 'redcarpet'

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
      haml :index
    end
    get '/post/:post_name' do |post_name|
      "you are at #{post_name}"
      # haml :psot
    end
  end
end
