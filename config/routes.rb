Rails.application.routes.draw do
  resources :github_repositories, only: [:index] do
  end
end
