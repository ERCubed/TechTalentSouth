Rails.application.routes.draw do
  root 'welcome#index'

  resources :activities
  resources :states
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
