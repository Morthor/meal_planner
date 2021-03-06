Rails.application.routes.draw do
  devise_for :users
  resources :shopping_list_items
  resources :shopping_lists
  resources :meals
  resources :ingredients
  resources :recipes
  resources :ingredients_amounts, only: :destroy
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
