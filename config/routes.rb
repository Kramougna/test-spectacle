Rails.application.routes.draw do

  resources :dashboards, only: [:index, :show]

  resources :imports, only: [:new, :create] do
    get 'confirm', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboards#index'
end
