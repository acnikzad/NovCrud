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

    get "/lots" => "lot#index"
    get "/lots/:id" => "lot#show"
    post "/lots" => "lot#create"
    patch "/lots/:id" => "lot#update"
    delete "lots/:id" => "lot#destroy"

  end
end
