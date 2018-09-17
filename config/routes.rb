Rails.application.routes.draw do
  resources :contacts, except: [:new, :create]
end
