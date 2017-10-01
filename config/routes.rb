Rails.application.routes.draw do
 
  resources :homes
  resources :projects do
  	 resources :progresses
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"

  match 'about', to: 'static_pages#about', via: 'get'
  match 'vision', to: 'static_pages#vision', via: 'get'
  match 'twobedroom', to: 'static_pages#twobedroom', via: 'get'
  match 'threebedroom', to: 'static_pages#threebedroom', via: 'get'
  match 'fourbedroom', to: 'static_pages#fourbedroom', via: 'get'
  match 'apply', to: 'static_pages#apply', via: 'get'
  match 'contact', to: 'static_pages#contact', via: 'get'
  match 'faqs', to: 'static_pages#faqs', via: 'get'
  match 'terms', to: 'static_pages#terms', via: 'get'
end
