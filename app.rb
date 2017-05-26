require "sinatra"
require_relative "config/application"
require 'pry'
set :bind, '0.0.0.0'  # bind to all interfaces


get "/" do
  redirect "/projects"
end

get '/projects' do
  # views all projects
  @projects = Project.all
  erb :index
end


get '/projects/:id' do
  @project = Project.find(params[:id])
  @members = @project.users
  @tasks = @project.tasks
  erb :show
end
