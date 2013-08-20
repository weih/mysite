require 'sinatra/base'

module SinatraBone
  class App < Sinatra::Base
    get '/' do
      @title = "Willmouse's Homepage"
      haml :index
    end
    get '/post/:post_name' do |post_name|
      "you are at #{post_name}"
      # haml :psot
    end
    get '/comment/*/*' do
      @comments = params[:splat].join(' ')
      "Comment -> #{@comments}"
    end
  end
end
