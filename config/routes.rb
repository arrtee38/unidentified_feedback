Rails.application.routes.draw do
  # get 'pages/terms'
  # get 'pages/privacy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  post 'feedbacks', to: 'feedbacks#create'
  
end
