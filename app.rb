#!/usr/bin/env ruby
require 'sinatra'
require 'thin'
require "sinatra/reloader" if development?
require 'pry-byebug'

include Scraper

get '/' do
  erb :index
end

get '/searcher' do
    redirect to('/')
end

post '/searcher' do
  erb :searcher, locals: { job_data: MechScraper.new(params["q"], params["l"]).package  }
end

not_found do
  'We couldn't find what you were looking for!'
end
