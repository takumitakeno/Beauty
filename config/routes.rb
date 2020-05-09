# Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  root 'homes#top'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins,
    controllers: {
      sessions:'admins/sessions',
      registrations: 'admins/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  
  get 'news/new' => 'news#new'
  resources :managements
  resources :news
  devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
end