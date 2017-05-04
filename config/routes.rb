Rails.application.routes.draw do
  # get 'employees/index'

  # get 'employees/import'
  resources :employees do
  	collection { post :import }
  end

  root to: "employees#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
