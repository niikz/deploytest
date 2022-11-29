# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index', as: 'welcome'
  get '/tweets', to: 'tweets#index', as: 'tweets'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
