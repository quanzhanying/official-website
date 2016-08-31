Rails.application.routes.draw do
  devise_for :users

  get "/overview", to: "welcome#overview"
  get "/syallabus", to: "welcome#syallabus"
  get "/students", to: "welcome#students"
  root to: "welcome#index"
end
