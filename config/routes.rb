Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :bloggs do
    member do
      get :toggle_status
    end
  end

  resources :bloggs
  resources :posts
  root to: 'pages#home'

  get 'posts/*missing', to: 'posts#missing'
end
