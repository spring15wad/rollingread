Rails.application.routes.draw do

  root 'task#index', as: 'task'

  get 'cascade', to: 'task#cascade', as: 'cascade'

  get 'semesters/new/:user_id', to: 'semesters#new', as: 'semester_in_user'

  get 'courses/new/:semester_id', to: 'courses#new', as: 'course_in_semester'

  get 'sources/new/:course_id', to: 'sources#new', as: 'source_in_course'

  get '/flipless/:course_id', to: 'assignments#flipless',  as: 'assignment_for_course'

  resources :assignments

  resources :sources

  resources :courses

  resources :semesters

  resources :users

  resources :task

  get '/auth/:provider', to: lambda{|env| [404, {}, ["Not Found"]]}, as: 'login'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
