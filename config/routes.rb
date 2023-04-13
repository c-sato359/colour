Rails.application.routes.draw do
  get 'homes/top'
  get 'search', to: 'image#seach', as: 'search' 
  
  #devise_for :followings
  #devise_for :followers
  #devise_for :notifications
  #devise_for :coments
  #devise_for :images
  get 'followings/new'
  get 'followings/edit'
  get 'coment/index'
  get 'coment/show'
  get 'coment/edit'
  get 'coment/new'
  #get 'image/new'
  #get 'image/index'
  #get 'image/show'
  #get 'image/edit'
  
  
     # patch '/customers/withdraw', to: 'customers#withdraw'
  resources :image
  resources :customers
  
  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }
  
   namespace :admin do
    #get 'homes/top'
    resources :genres
   end

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  patch 'customers' => "public/customers#update"

 scope module: :public do
    get '/about', to: 'homes#about'
    #get 'homes/top'#, to: 'customers#new'
    #root to: 'homes#top'
   # post '/homes/guest_sign_in', to: 'homes#new_guest'
     #'customers' => "customers#show"
   # get 'customers/edit/my_page' => "customers#edit"
    get '/customers/unsubscribe', to: 'customers#unsubscribe'

   
    #delete "all_destroy" => "cart_items#all_destroy",as: "customers_all_destroy"
  end

#get 'orders/:id/show'
end
