Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'admin/page#dashboard'

  namespace :admin do
  	get 'dashboard', to: 'page#dashboard'
    get 'account/list', to: 'page#account_list'
    get 'account/form', to: 'page#account_form'
    get 'account/info', to: 'page#account_info'
  end
end
