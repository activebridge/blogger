Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/github/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', as: :signout
end
