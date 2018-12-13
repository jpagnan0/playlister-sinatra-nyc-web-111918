class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  
  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }
  set :method_override, true
  get '/' do
    erb :index
  end
end
