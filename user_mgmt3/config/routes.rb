Rails.application.routes.draw do
  
  root 'users#index'
  get 'users/show' => 'users#show'
  get 'users/:id/show' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  get 'users/new' => 'users#new'
  post 'users/create' => 'users#create'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#delete', as: 'kill_user'

# > rake routes
#       Prefix Verb   URI Pattern               Controller#Action
#         root GET    /                         users#index
#   users_show GET    /users/show(.:format)     users#show
#              GET    /users/:id/show(.:format) users#show
#              GET    /users/:id/edit(.:format) users#edit
#    users_new GET    /users/new(.:format)      users#new
# users_create POST   /users/create(.:format)   users#create
#              PATCH  /users/:id(.:format)      users#update
#    kill_user DELETE /users/:id(.:format)      users#delete
  
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