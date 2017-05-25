require "sinatra"
require_relative "config/application"

set :bind, '0.0.0.0'  # bind to all interfaces

get '/projects' do
  # views all projects
end


get '/projects/:id' do
  # 
end
