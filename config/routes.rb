Opensandiego::Application.routes.draw do
  resources :calls
  
  root :to => "calls#index"

end
