Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "homes#index"

   devise_for :users
  devise_scope :user do
    root to: 'devise/registrations#new'
  end
end
