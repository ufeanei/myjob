Porter::Application.routes.draw do
 get "/home" => "pages#home"
 get "/about" => "pages#about"
 get "/contact" => "pages#contact"
 get "/privacy" => "pages#privacy"
 get "/service" => "pages#service"

 post "/jobs/search" => "jobs#index"
  
 root 'pages#home'

 resources :jobs
end
