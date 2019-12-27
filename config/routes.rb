# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: "main#home", as: :root
  # Pdfjs gem route configuration
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  # Administrate gem route configuration
  namespace :admin do
      # CKEditor gem route configuration
      mount Ckeditor::Engine => '/ckeditor'
      resources :users
      resources :events
      resources :articles
      resources :albums
      resources :pdfs
      resources :links
      root to: "users#index"
      post '/users/send_invitation(/:name)(/:email)', to: "users#send_invitation", as: :invitation
  end
  # Devise gem route configuration
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get '/adherents', to: "user_space#main", as: :user_space
  get '/adherents/user', to: "user_space#simple_user_space", as: :simple_user_space
  get '/adherents/admin', to: "user_space#admin_space", as: :admin_space
  post '/contact_us(/:name)(/:email)(/:message)', to: "main#contact_us", as: :contact_us
  # Auto-session timeout gem route configuration
  get 'active'  => 'sessions#active'
  get 'timeout' => 'sessions#timeout'
end
