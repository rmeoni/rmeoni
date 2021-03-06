Rails.application.routes.draw do

  get '/' => 'pages#home', as: :root
  get '/djay-recordings' => 'pages#music'
  get '/projects/:id/edit' => 'projects#edit', as: :edit_project
  get '/projects' => 'projects#index'
  post '/projects' => 'projects#create'
  get '/projects/new' => 'projects#new', as: :new_project
  post '/projects/new' => 'projects#create'
  get '/projects/:id/new' => 'photographs#new', as: :photo_in_project
  post '/projects/:id/new' => 'photographs#create'
  get '/projects/:id' => 'projects#show', as: :project
  patch '/projects/:id' => 'projects#update'

  get '/photographs' => 'photographs#index'
  post '/photographs' => 'photographs#create'
  post '/photographs' => 'photographs#update'
  patch '/photographs/:id' => 'photographs#update'
  get '/photograpsh/new' => 'photographs#new'
  get '/photographs/:id/edit' => 'photographs#edit', as: :edit_photograph
  get '/photographs/:id' => 'photographs#show', as: :photograph 

  get '/videos/:id/edit' => 'videos#edit', as: :edit_video
  get '/videos/:id' => 'videos#show', as: :video
  get '/videos' => 'videos#index'

  match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]


  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  get '/about' => 'pages#about'
  get '/catalogo-1' => 'pages#catalog'
  get '/collections' => 'pages#catalog'

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
