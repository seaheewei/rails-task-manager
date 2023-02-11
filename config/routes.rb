Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # add a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # show a task
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: "task"

  # update a task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "tasks/:id", to: "tasks#update"

  # destroy a task
  delete "tasks/:id", to: "tasks#destroy"

end
