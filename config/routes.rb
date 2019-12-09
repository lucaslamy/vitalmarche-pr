Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
      resources :users
      resources :events
      resources :articles
      resources :albums

      root to: "users#index"
  end
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#home", as: :root
  root to: "main#user_space", as: :user_space
end
