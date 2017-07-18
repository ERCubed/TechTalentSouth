Rails.application.routes.draw do
  get 'inventory/all_products'

  get 'inventory/one_product'

  get 'inventory/by_category' => 'inventory#by_category'

  get 'inventory/category/:name' => 'inventory#category', :as => 'category_list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
