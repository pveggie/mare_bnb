Rails.application.routes.draw do


  root 'pages#home'
  # get 'users/show'

  get '/filter', to: 'pages#filter'

  devise_for :users, :path => 'accounts'

  resources :users, only: [:show] do
    resources :stallions do
      resources :bookings, only: [:new, :create]
    end

    # resources :profiles, only: [:new, :create, :edit, :update]
  end

  get 'users/:id/profile' => 'profiles#show', as: :user_profile
  get 'users/:id/profile/new' => 'profiles#new', as: :new_user_profile
  post 'users/profiles' => 'profiles#create'
  get 'users/:id/profile/edit' => 'profiles#edit', as: :edit_user_profile
  patch 'users/:id/profile' => 'profiles#update'

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
