Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects do 
  	resources :tickets
  end
  resources :users, :except => :show

  get "users/login", to: "users#logIn"

end
