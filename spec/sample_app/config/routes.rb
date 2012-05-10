SampleApp::Application.routes.draw do
  root :to => 'application#index'
  get '/variable', :to => 'application#variable'
end
