Rails.application.routes.draw do
  get 'welcome/index'

  # The priority is based upon order of creation:
 # first created -> highest priority.
 # ...
 # You can have the root of your site routed with "root"
 # just remember to delete public/index.html.
  resources :articles
  resources :posts
  root :to => "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
