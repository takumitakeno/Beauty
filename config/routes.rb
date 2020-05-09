# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'   
    } 
  root 'homes#top'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  
  get 'news/new' => 'news#new'
  resources :managements
  resources :news

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end