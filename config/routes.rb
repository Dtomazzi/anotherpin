Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

 # we want to see multiple products
 resources :products do
   resources :order_items
 end

 # We want our users to order multiple times

 resources :orders  


 resource :cart

 get "info", to: "pages#info"

 root "pages#home"



end
