Rails.application.routes.draw do
  devise_for :users

  get "/overview", to: "welcome#overview"
  root to: "welcome#index"
end
