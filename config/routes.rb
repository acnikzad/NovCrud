Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/cars" => "cars#index"
    get "/cars/:id" => "cars#show"
    post "/cars" => "cars#create"
    patch "/cars/:id" => "cars#update"
    delete "/cars/:id" => "cars#destroy"

    get "/lots" => "lots#index"
    get "/lots/:id" => "lots#show"
    post "/lots" => "lots#create"
    patch "/lots/:id" => "lots#update"
    delete "lots/:id" => "lots#destroy"

  end
end
