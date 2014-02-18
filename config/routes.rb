DjDashboard::Engine.routes.draw do
  root controller: :jobs, action: :index

  resources :jobs, only: [:index, :show] do
  	get 'clear', on: :collection, to: 'jobs#clear'
  	get 'delete', on: :member, to: 'jobs#delete'
  end

  get 'settings', controller: :settings, action: :show, as: :settings
end