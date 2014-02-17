Rails.application.routes.draw do
  get '/djdashboard', controller: :dj_dashboard, action: :index
end