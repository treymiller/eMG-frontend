class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  assets {
    serve 'js', from: 'views/js'
    serve 'css', from: 'views/css'
    serve 'images', from: 'views/images'
  }

  get '/' do
    erb :index, layout: :main_layout
  end

  get '/why' do
    erb :why, layout: :main_layout
  end

end
