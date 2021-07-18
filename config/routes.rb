Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'  ### before login
  resources :home do 		### index routes
    collection do
      get "about_us"   ###about_us
      get "contact_us" ###Contact_us
      get "cashtelex_exchange" ###services1
      get "cashtelex_go" ###services2
      get "cashtelex_coin" ###services3
      get "cashtelex_real_estate" ###services1
      get "cashtelex_gold" ###services1
    end
  end

  devise_for :admins

  namespace :admins do
    resources :dashboards
    resources :about_us
    resources :terms
    resources :services
  end
end
