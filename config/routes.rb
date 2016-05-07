Porter::Application.routes.draw do
 get "/home" => "pages#home"
 get "/about" => "pages#about"
 get "/contact" => "pages#contact"
 get "/privacy" => "pages#privacy"
 get "/service" => "pages#service"
 get "/become_driver" => "pages#become_driver"
 get "/confirm" => "confirmations#edit"

 post "/jobs/search" => "jobs#index"
  
 root 'pages#home'

 resources :jobs
 resources :password_resets,  only: [:new, :create, :edit, :update]

 resources :users 

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 get '/logout', to: 'sessions#destroy'

 resource :dashboard, only: [:show] do
  member do
    get 'my_jobs'
    get 'new_password'
    get 'my_applications'
    get 'jobs_won'
    patch 'change_password'
    get 'edit_profile'
    get 'my_profile'
  end
 end

end
