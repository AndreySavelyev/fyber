Rails.application.routes.draw do
  resource :offers_requests, only: [:new, :create]

  root 'offers_requests#new'
end
