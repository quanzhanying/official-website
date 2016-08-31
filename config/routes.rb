Rails.application.routes.draw do
  devise_for :users

  resources :students

  get "/overview", to: "welcome#overview"
  get "/syallabus", to: "welcome#syallabus"
  get "/projects", to: "students#projects"
  get "/apply", to: "welcome#apply"
  get "/apply/success", to: "steps#success"
  root to: "welcome#index"
end
