Resumeapp::Application.routes.draw do
  resources :resume_collections

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end