require 'sinatra/base'

class App < Sinatra::Base

  TASKS = []

  get '/' do
    erb :index, :locals => {:tasks => TASKS}
  end

  get '/tasks/new' do
    erb :new_task
  end

  post '/' do
    TASKS << params[:new_task]
    redirect '/'
  end
end