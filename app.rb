Bundler.require :web
Bundler.require :development if development?

get '/style.css' do
  less :style
end

get '/' do
  haml :index
end

not_found do
  haml :'404'
end
