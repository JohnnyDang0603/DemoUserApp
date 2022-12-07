# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :timesheets
  # Defines the root path route ("/")
  # resources :timesheets
  root to: 'timesheets#index'
  resources :timesheets, only: %i[index new create destroy edit]
end
