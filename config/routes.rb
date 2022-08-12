Rails.application.routes.draw do
  Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    #get controller
    get "about", to: "about#index"

    get "password", to: "password#edit", as: :edit_password
    patch "password", to: "password#update"

    get "sign_up", to: "registration#new"
    post "sign_up", to: "registration#create"

    get "sign_in", to: "sessions#new"
    post "sign_in", to: "sessions#create"

    get "password/reset", to: "password_resets#new"
    post "password/reset", to: "password_resets#create"

    get "password/reset/edit", to: "password_resets#edit"
    patch "password/reset/edit", to: "password_resets#update"

    delete "logout", to: "sessions#destroy"
    root to: "main#index"
    # Defines the root path route ("/")
    # root "articles#index"
  end

end
