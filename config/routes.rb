Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    root "home#index"
    
    get "first" ,to: "home#first"
    get "second" ,to: "home#second"
    get "posts/:id", to: "home#show_post"
end
