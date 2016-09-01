Rails.application.routes.draw do
  devise_for :users

  resources :students

  get "/overview", to: "welcome#overview"
  get "/syallabus", to: "welcome#syallabus"
  get "/projects", to: "students#projects"
  get "/apply", to: "welcome#apply"
  get "/apply/success", to: "steps#success"

  resources :faqs, only: [:index]

  namespace :admin do
    resources :faqs do
      member do
        post :publish
        post :draft
        post :move_up
        post :move_down
        get :answers
      end
    end
    resources :categories
    resources :users do
      member do
        post :turn_to_user
        post :turn_to_admin
      end
    end
  end
  root to: "welcome#index"
end
