Rails.application.routes.draw do
 root "users#index"
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only:[:index, :new, :create, :show, :edit, :update]
end
