Rails.application.routes.draw do
  # use this hash values to create custom routes for devise: , path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'registration'}  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'registration'}
  
  get 'angular', to: "portofolios#angular"
  
  resources :portofolios, except: [:show] do
    put :sort, on: :collection
  end
  
  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'
  
  mount ActionCable.server => '/cable'

  
  get 'pages/home'
  get 'aboutme', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
    
  root to: 'pages#about'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
