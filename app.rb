require 'sinatra/base'

class App < Sinatra::Base

  TASKLIST = []

  get '/' do
    erb :index, :locals => {:tasks => TASKLIST}
  end

  get '/tasks/new' do
    erb :add_task
  end

  post '/' do
    TASKLIST << params[:create_task]
    redirect '/'
  end

end