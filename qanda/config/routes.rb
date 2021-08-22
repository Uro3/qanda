Rails.application.routes.draw do
  root 'home#top'
  devise_for :users, module: "users"
  resources :questions
end
