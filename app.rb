require 'sinatra/base'

module SinatraBone
  class App < Sinatra::Base
    get '/' do
      haml :index
    end
  end
end
