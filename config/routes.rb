Rails.application.routes.draw do
  get 'categories/index'

  get 'products/index'
  get 'products/search'

  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
