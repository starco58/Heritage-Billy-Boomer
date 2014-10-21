Rails.application.routes.draw do
root 'essays#home'


  # Routes for the Answer resource:
  # CREATE
  get('/answers/new', { :controller => 'answers', :action => 'new' })
  get('/create_answer', { :controller => 'answers', :action => 'create' })

  # READ
  get('/answers', { :controller => 'answers', :action => 'index' })
  get('/answers/:id', { :controller => 'answers', :action => 'show' })

  # UPDATE
  get('/answers/:id/edit', { :controller => 'answers', :action => 'edit' })
  get('/update_answer/:id', { :controller => 'answers', :action => 'update' })

  # DELETE
  get('/delete_answer/:id', { :controller => 'answers', :action => 'destroy' })
  #------------------------------

  # Routes for the Questionnaire resource:
  # CREATE
  get('/questionnaires/new', { :controller => 'questionnaires', :action => 'new' })
  get('/create_questionnaire', { :controller => 'questionnaires', :action => 'create' })

  # READ
  get('/questionnaires', { :controller => 'questionnaires', :action => 'index' })
  get('/questionnaires/:id', { :controller => 'questionnaires', :action => 'show' })

  # UPDATE
  get('/questionnaires/:id/edit', { :controller => 'questionnaires', :action => 'edit' })
  get('/update_questionnaire/:id', { :controller => 'questionnaires', :action => 'update' })

  # DELETE
  get('/delete_questionnaire/:id', { :controller => 'questionnaires', :action => 'destroy' })
  #------------------------------

  # Routes for the Essay resource:
  # CREATE
  get('/essays/new', { :controller => 'essays', :action => 'new' })
  get('/create_essay', { :controller => 'essays', :action => 'create' })

  # READ
  get('/essays', { :controller => 'essays', :action => 'index' })
  get('/essays/:id', { :controller => 'essays', :action => 'show' })
  get('/home', { :controller => 'essays', :action => 'home' })
  # UPDATE
  get('/essays/:id/edit', { :controller => 'essays', :action => 'edit' })
  get('/update_essay/:id', { :controller => 'essays', :action => 'update' })

  # DELETE
  get('/delete_essay/:id', { :controller => 'essays', :action => 'destroy' })
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get('/companies/new', { :controller => 'companies', :action => 'new' })
  get('/create_company', { :controller => 'companies', :action => 'create' })

  # READ
  get('/companies', { :controller => 'companies', :action => 'index' })
  get('/companies/:id', { :controller => 'companies', :action => 'show' })

  # UPDATE
  get('/companies/:id/edit', { :controller => 'companies', :action => 'edit' })
  get('/update_company/:id', { :controller => 'companies', :action => 'update' })

  # DELETE
  get('/delete_company/:id', { :controller => 'companies', :action => 'destroy' })
  #------------------------------

  # Routes for the Seller resource:
  # CREATE
  get('/sellers/new', { :controller => 'sellers', :action => 'new' })
  get('/create_seller', { :controller => 'sellers', :action => 'create' })

  # READ
  get('/sellers', { :controller => 'sellers', :action => 'index' })
  get('/sellers/:id', { :controller => 'sellers', :action => 'show' })

  # UPDATE
  get('/sellers/:id/edit', { :controller => 'sellers', :action => 'edit' })
  get('/update_seller/:id', { :controller => 'sellers', :action => 'update' })

  # DELETE
  get('/delete_seller/:id', { :controller => 'sellers', :action => 'destroy' })
  #------------------------------

  # Routes for the Buyer resource:
  # CREATE
  get('/buyers/new', { :controller => 'buyers', :action => 'new' })
  get('/create_buyer', { :controller => 'buyers', :action => 'create' })

  # READ
  get('/buyers', { :controller => 'buyers', :action => 'index' })
  get('/buyers/:id', { :controller => 'buyers', :action => 'show' })

  # UPDATE
  get('/buyers/:id/edit', { :controller => 'buyers', :action => 'edit' })
  get('/update_buyer/:id', { :controller => 'buyers', :action => 'update' })

  # DELETE
  get('/delete_buyer/:id', { :controller => 'buyers', :action => 'destroy' })

#About
get('/about', { :controller => 'essays', :action => 'about' })
  #------------------------------

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
