Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'admin/page#dashboard'

  namespace :admin do
  	get 'dashboard', to: 'page#dashboard'
  end
end
