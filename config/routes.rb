# frozen_string_literal: true

Rails.application.routes.draw do
  resources :travel_infomations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users
  # get 'home/index'
  # get 'home/about'
  # get 'home/contact'
  # get 'home/testimonial'
  # get 'home/faq'
  # get 'home/partners'
  root to: 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
