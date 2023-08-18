Rails.application.routes.draw do
  # get "/employeeforms/new", to: "employeeforms#new", as: :new_employeeform
  # get "/employeeforms/:id", to: "employeeforms#show", as: :employeeform
  # patch "/employeeforms/:id", to: "employeeforms#update"
  # delete "/employeeforms/:id", to: "employeeforms#destroy"
  # get "/employeeforms/:id/edit", to: "employeeforms#edit", as: :edit_employeeform
  # post "/employeeforms", to: "employeeforms#create", as: :employeeforms
  
  resources :employeeforms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "employeeforms#index"
end
