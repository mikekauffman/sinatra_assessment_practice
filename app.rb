require 'sinatra/base'

class App < Sinatra::Base

  TASKLIST = []

  get '/' do
    erb :homepage, locals: {tasks: TASKLIST}
  end

  get '/task/new' do
    erb :new_task
  end

  post '/' do
    TASKLIST << params[:new_task]
    redirect '/'
  end

end
