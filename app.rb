#!/usr/bin/env ruby
require 'sinatra'
require 'thin'
require "sinatra/reloader" if development?
require 'erb'
require 'pry-byebug'


get '/' do
  erb :index
end
