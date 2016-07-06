Rails.application.routes.draw do

  get '/' => 'projects#index', as: :root
  get '/projects' => 'projects#index'
  post '/projects' => 'projects#create'
  get '/projects/new' => 'projects#new', as: :new_project
  post '/projects/new' => 'projects#create'
  get '/projects/:id/new' => 'photographs#new', as: :photo_in_project
  post '/projects/:id/new' => 'photographs#create'
  get '/projects/:id' => 'projects#show', as: :project

  get '/photographs' => 'photographs#index'
  post '/photographs' => 'photographs#create'
  post '/photographs' => 'photographs#update'
  patch '/photographs/:id' => 'photographs#update'
  get '/photograpsh/new' => 'photographs#new'
  get '/photographs/:id/edit' => 'photographs#edit', as: :edit_photograph
  get '/photographs/:id' => 'photographs#show', as: :photograph

  get '/contact' => 'pages#contact'

  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout



  resources :photographs, only: [:destroy]

  get "*missing" => redirect("/")
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
