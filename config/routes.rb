Rails.application.routes.draw do
  get 'note/index', to: 'note#index'
  post 'note/index', to: 'note#index'
  get 'note/index'
  post 'note/index'

  resources :smemos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
