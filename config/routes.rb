Rails.application.routes.draw do
  # see all tasks
  get 'tasks', to: 'tasks#index'

  # create a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # see one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
