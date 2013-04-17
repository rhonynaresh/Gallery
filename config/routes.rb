Content::Application.routes.draw do
  #get "/" => "content#login"
  #root :to => "content#login"

  get "content/login" => "content#login", :as => "login"
  post "content/home"

  get "gallery/painting" => "gallery#painting", :as => "paintings"
  #post "gallery/painting" => "gallery#painting", :as => "paintings"
  #post "gallery/images"
  #get "gallery/create" => "gallery#create", :as => "create"
  post "gallery/create" => "gallery#create", :as => "create"
  #get "home/home"

  #get "content/login" => "content#login", :as => "login"
    

  get "content/signup" => "content#signup", :as => "signup"
  post "content/signup" => "content#signup", :as => "signup"

  post "content/register" => "content#register", :as => "register"

  get "content/changepassword" => "content#changepassword", :as => "changepassword"
  post "content/changepassword" => "content#changepassword", :as => "changepassword"

  get "content/forgotpassword" => "content#forgotpassword", :as => "forgotpassword"
  post "content/forgotpassword" => "content#forgotpassword", :as => "forgotpassword"

  #post "content/signin" => "content#signin", :as => "signin"

  #post "content/register" => "content#register", :as => "register"

  get "content/home" => "content#home", :as => "home"

  get "content/gallery" => "gallery#gallery" 
  #post "content/gallery" => "gallery#gallery" 

  post "content/add_gallery" => "gallery#add_gallery"

  #get "content/gallery/new" => "gallery#images", :as => "new_gallery"
  #post "content/gallery/new" => "gallery#images", :as => "new_gallery"

  #get "upload" => "gallery#upload", :as => "upload"
  #post "upload" => "gallery#upload", :as => "upload"

  get "content/gallery/:gallery_id" => "gallery#images", :as => "gallery"
  post "content/gallery/upload" => "gallery#upload"
  # This creates 2 helper methods - gallery_path, gallery_url

  #resource :gallery do
    #resource :image 
  #end



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
