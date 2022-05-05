Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  namespace :admin do
    namespace :v1 do
      get "home" => "home#index"
    end
  end

  namespace :storefront do
    namespace :v1 do
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
