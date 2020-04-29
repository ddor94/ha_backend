Rails.application.routes.draw do
  devise_for :artists
  post "/api/v1", to: "graphql#execute"
end
