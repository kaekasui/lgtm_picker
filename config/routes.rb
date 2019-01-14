# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'lgtms#index'

  resources :lgtms, only: %w[index create destroy]
end
