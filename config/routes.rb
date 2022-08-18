Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/workouts" => "workouts#index"
  get "/workouts/:id" => "workouts#show"
  post "/workouts" => "workouts#create"
  patch "/workouts/:id" => "workouts#update"
  delete "/workouts/:id" => "workouts#destroy"
end
