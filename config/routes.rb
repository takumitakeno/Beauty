Rails.application.routes.draw do
  devise_for :admins,
    controllers: {
      sessions: 'admins/sessions',
      registrations: "admins/registrations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  root 'homes#top'

  resources :managements
end
