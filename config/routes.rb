Porter::Application.routes.draw do
  get "sitemap/index"
 get "/home" => "pages#home"
 get "/faq" => "pages#faq"
 get "/contact" => "pages#contact"
 get "/privacy" => "pages#privacy"
 get "/service" => "pages#service"
 get "/become_driver" => "pages#become_driver"
 get "/confirm" => "confirmations#edit"
 
 match "/delayed_job" => DelayedJobWeb, :anchor => false, via: [:get, :post]
  
 root 'pages#home'

 resources :jobs do
  collection do
 	  get 'search'=> 'jobs#index'
  end

  member do
    patch 'activate_job'
  end
  
  resources :job_applications, only: [:create, :destroy] do
    member do
      get 'award'
    end

    resources :reviews, only: [:create]
  end
 end
 
 resources :sitemap, only: [:index]
 resources :password_resets,  only: [:new, :create, :edit, :update]

 resources :users , except: [:index, :update, :destroy]

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
    patch 'update_profile' 
    get 'rate_your_helpers' 
  end
 end


  resource :manager, only: [:show] do
    member do
      get 'all_jobs'
      get 'all_users'
      get 'all_applications'
    end
  end

  resources :categories
end
