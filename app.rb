#!/usr/bin/env ruby
require 'sinatra'
require 'thin'
require "sinatra/reloader" if development?
require 'pry-byebug'


get '/' do
  erb :index
end

post '/searcher' do
  name = params[ :q ]

  erb :searcher, locals: { name: name }
end