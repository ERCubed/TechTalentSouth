Rails.application.routes.draw do
  get 'country'	=> 'country#index'  
  get 'country/all_states'
  get 'country/top_five_population'

  root 'welcome#index'
  get 'contact' => 'welcome#contact'

  resources :activities
  resources :states
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
