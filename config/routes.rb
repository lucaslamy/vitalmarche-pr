Rails.application.routes.draw do
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
      resources :users
      resources :events
      resources :articles
      resources :albums
      resources :pdfs
      resources :links

      root to: "users#index"
      post '/users/send_invitation(/:name)(/:email)', to: "users#send_invitation", as: :invitation
  end
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#home", as: :root
  get '/adherents', to: "user_space#main", as: :user_space
  get '/adherents/user', to: "user_space#simple_user_space", as: :simple_user_space
  get '/adherents/admin', to: "user_space#admin_space", as: :admin_space
  post '/contact_us(/:name)(/:email)(/:message)', to: "main#contact_us", as: :contact_us
end
