Rails.application.routes.draw do
  # get 'meetings/index'

  # get 'meetings/show'

  # get 'meetings/new'

  # get 'calls/index'

  # get 'calls/new'

  # get 'calls/show'

  # get 'products/index'

  # get 'products/new'

  # get 'products/edit'

  # get 'products/show'

  # get 'employees/index'

  # get 'employees/new'

  # get 'employees/edit'

  # get 'employees/show'

  # get 'contacts/index'

  # get 'contacts/new'

  # get 'contacts/edit'

  # get 'contacts/show'

  # get 'accounts/index'

  # get 'accounts/new'

  # get 'accounts/edit'

  resources :accounts
  resources :contacts
  resources :employees
  resources :products
	resources :calls  
  resources :meetings
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
