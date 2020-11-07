# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/testimonial'
  get 'home/faq'
  get 'home/partners'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
