Rails.application.routes.draw do
  # the index page gets three routes:
  root 'weather#index'
  get 'index' => 'weather#index'
  # "get" routes for when we initially come to the page
  # (whether typing in manually, or coming to as the root)
  post 'index' => 'weather#index'  
  # a "post route for when we come to the page"
  # after submitting the form

  # hey, while we're here, wanna change the 'test' route?
  get 'test' => 'weather#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
