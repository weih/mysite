require 'sinatra/base'

module Site
  class App < Sinatra::Base
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
