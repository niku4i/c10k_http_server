require 'sinatra'
get '/*' do
  'Hello world!'
end

get '/favicon.ico' do
  nil
end
