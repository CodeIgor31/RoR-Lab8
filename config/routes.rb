# frozen_string_literal: true

Rails.application.routes.draw do
  root 'form#form_creator', as: 'home'
  get 'result' => 'result_page#result', as:'res'
end
