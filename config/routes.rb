Rails.application.routes.draw do
 
  resources :leads
  resources :contacts
  resources :houses
  resources :homes
  resources :projects do
     resources :jobs, path: :users, module: :projects
  end

  resources :projects do
    resources :progresses
  end

  resources :progresses do
    resources :comments
  end
 
  devise_for :users, controllers: { registrations: 'registrations' }
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
  match 'dashboard', to: 'static_pages#dashboard', via: 'get'
  match 'clientsland', to: 'static_pages#clientsland', via: 'get'
end
