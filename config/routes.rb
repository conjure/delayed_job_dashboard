DjDashboard::Engine.routes.draw do
  root controller: :jobs, action: :index

  resources :jobs, only: [:index, :show]
end