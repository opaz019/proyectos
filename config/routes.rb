Rails.application.routes.draw do
 
  get 'projects/index'
  get 'projects/new'
  get 'projects/create'

  root 'projects#index'
end
