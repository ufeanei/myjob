Porter::Application.routes.draw do
 get "/home" => "pages#home"
 get "/about" => "pages#about"
 get "/contact" => "pages#contact"
 get "/privacy" => "pages#privacy"
 get "/service" => "pages#service"

 post "/jobs/search" => "jobs#index"
  
 root 'pages#home'

 resources :jobs

 resources :users do
  member do
    get 'my_jobs'
    get 'my_applications'
    get 'my_granted_applications'
    get 'reset_password'
    get 'dashboard'
  end
 end
end
