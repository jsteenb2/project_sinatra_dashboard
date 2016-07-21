#!/usr/bin/env ruby
require 'sinatra'
require 'thin'
require "sinatra/reloader" if development?
require 'pry-byebug'


get '/' do
  erb :index
end

get '/' do
  
end

post '/' do

end
