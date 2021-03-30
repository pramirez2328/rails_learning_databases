Rails.application.routes.draw do
 root "articles#index"
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/:id', to:'users#show'
  get 'users', to:'users.index'
end
