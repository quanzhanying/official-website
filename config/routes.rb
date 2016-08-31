Rails.application.routes.draw do
  devise_for :users

  get "/overview", to: "welcome#overview"
  get "/syallabus", to: "welcome#syallabus"
  get "/students", to: "welcome#students"
  get "/projects", to: "students#projects"
  get "/apply", to: "welcome#apply"
  get "/apply/step_2", to: "steps#step_2"
  get "/apply/step_3", to: "steps#step_3"
  root to: "welcome#index"
end
