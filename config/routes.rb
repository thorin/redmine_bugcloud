RedmineApp::Application.routes.draw do
  get '/projects/:id/bugcloud' => 'bugcloud#index'
end