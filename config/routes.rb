Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :timesheets
  # Defines the root path route ("/")
  # resources :timesheets
  root to: 'users#index'
  # get 'timesheets/:id/edit', to:'timesheets#edit', as: 'edit_timesheet'
  resources :users do
    # get :timesheets, on: :member
    resources :timesheets, only: %i[index]
  end

  resources :timesheets
end
