Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  
  controller :sessions do
  	get 'login' => :new
	post 'login' => :create
	delete 'logout' => :destroy
  	post 'qna/add_process' => 'qna#add_process'
	get 'qna/list' => 'qna#list'
	get 'qna/add' => 'qna#add'
	get 'qna/add/:id' => 'qna#edit'
	post 'qna/edit_process' => 'qna#edit_process'
	get "qna/delete/:id" => 'qna#delete'
	post 'qna/delete_process' => 'qna#delete_process'
	get "qna/qna/write_comment/:id" => 'qna#write_comment'
	post 'qna/write_comment_complete' => 'qna#write_comment_complete'
  end

  get "/:category" => 'store#posts_category'
  get "store/show/:id" => 'store#show'
  
  
  get "user/new" => 'user#new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :line_items
  resources :carts

  get "store/index"
  resources :products do
	get :who_bought, on: :member


  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
	root 'store#index', as: 'store'

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
