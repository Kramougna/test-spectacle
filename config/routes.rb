Rails.application.routes.draw do
  get 'dashboards/index'

  get 'dashboards/show'

  get 'imports/new'

  get 'imports/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
