Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :cocktails, only: [:index, :show, :create, :new]

  resources :ingredients, only: [:create, :new, :show, :index]
  resources :doses, only: [:create, :new, :show, :index]

end
