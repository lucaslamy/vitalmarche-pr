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
  get '/adherents', to: "user_space#main", as: :user_space
  get '/adherents/album', to: "user_space#album_space", as: :album_space
end
