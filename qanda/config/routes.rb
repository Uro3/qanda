Rails.application.routes.draw do
  root 'home#top'
  devise_for :users, module: 'users'
  get '/users', to: redirect('/users/sign_up')
  get '/users/password', to: redirect('/users/password/new')
  resources :questions
end
