Rails.application.routes.draw do
  
  get 'homepage' => 'welcome#index'
  get 'about_us' => 'welcome#about'
  get 'contact_us' => 'welcome#contact'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
