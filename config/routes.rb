# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index', as: 'welcome'
  get '/auth/:provider/callback', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
