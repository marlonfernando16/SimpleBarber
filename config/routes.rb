Rails.application.routes.draw do
  get 'home/index'
  get '/', to: redirect('/home/index')
  root 'home#index'
  resources :services
  resources :attendances
  resources :customers
  resources :barbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
