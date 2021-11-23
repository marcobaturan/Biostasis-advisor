require 'sinatra'

# source: https://learn.co/lessons/sinatra-forms-params-readme-walkthrough

get '/' do
  erb :index
end

post '/result' do
  params.to_s
end