Porter::Application.routes.draw do
 get "/home" => "pages#home"
 get "/about" => "pages#about"
 get "/contact" => "pages#contact"
 get "/privacy" => "pages#privacy"
 get "/service" => "pages#service"
 get "/become_driver" => "pages#become_driver"


 post "/jobs/search" => "jobs#index"
  
 root 'pages#home'

 resources :jobs

 resources :users 

 resource :dashboard, only: [:show] do
  member do
    get 'my_jobs'
    get 'my_applications'
    get 'jobs_won'
    get 'reset_password'
    get 'edit_profile'
    get 'my_profile'
  end
 end

end
