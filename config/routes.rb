Rails.application.routes.draw do
  get 'charges/create'

  get 'charges/new'
  get 'charges/downgrade' => 'charges#downgrade'

  resources :wikis

  devise_for :users

  resources :charges, only: [:new, :create]

  get 'about' => 'welcome#about'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
