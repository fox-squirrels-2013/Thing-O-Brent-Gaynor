require 'sinatra'
require 'sinatra/activerecord'

get "/" do
  @title = "Welcome."
  erb :index
end

