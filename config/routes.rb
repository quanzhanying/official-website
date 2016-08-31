Rails.application.routes.draw do
  devise_for :users

  get "/overview", to: "welcome#overview"
  get "/syallabus", to: "welcome#syallabus"
  root to: "welcome#index"
end
