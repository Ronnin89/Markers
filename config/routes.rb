Rails.application.routes.draw do
  resources :bookmarks
  resources :categories
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'get_bookmarks/:category', to: 'bookmarks#bookmarks_category', as: 'bookmarks_category'

  root 'bookmarks#index'
end
