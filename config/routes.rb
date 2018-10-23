Rails.application.routes.draw do
  resources :contacts, except: [:new, :edit]
end
