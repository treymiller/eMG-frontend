class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  assets {
    serve 'js', from: 'views/js'
    serve 'css', from: 'views/css'
    serve 'images', from: 'views/images'

    css :application, '/css/app.css', [
      '/css/skel-noscript.css',
      '/css/style.css',
      '/css/style-desktop.css'
    ]

    js :application, '/js/app.js', [
      '/js/config.js',
      '/js/skel.min.js'
    ]

  }
  

  get '/' do
    erb :index, layout: :main_layout
  end

  get '/why' do
    erb :why, layout: :main_layout
  end

  get '/pricing' do
    erb :pricing, layout: :main_layout
  end

  get '/hacks' do
    erb :hacks, layout: :main_layout
  end

  get '/terms' do
    erb :tos, layout: :main_layout
  end

end
