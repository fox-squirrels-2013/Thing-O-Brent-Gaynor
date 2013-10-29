require 'sinatra'
require 'active_record'
require_relative './app/models/book'

ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get "/" do
  erb :index
end

post '/' do
  puts params
  erb :index
  Book.create(title: params[:title], author: params[:author], description: params[:description] )
end

get "/all" do
  @books = Book.all
  erb :books
end

get "/change" do
  erb :change
end

post '/change' do
  puts params
  erb :change
  Book.create(title: params[:title], author: params[:author], description: params[:description] )
end
