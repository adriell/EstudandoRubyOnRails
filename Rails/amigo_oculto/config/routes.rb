Rails.application.routes.draw do
  resources :friends
  get 'hello/World'
  resources :amigos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
