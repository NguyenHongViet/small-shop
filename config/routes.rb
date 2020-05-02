Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'admin/page#account_list'

  namespace :admin do
    get 'account/list', to: 'page#account_list'
    get 'account/form', to: 'page#account_form'
    get 'account/info', to: 'page#account_info'
    get 'user/list', to: 'page#user_list'
    get 'user/form', to: 'page#user_form'
    get 'user/info', to: 'page#user_info'
    get 'product/list', to: 'page#product_list'
    get 'product/form', to: 'page#product_form'
    get 'product/info', to: 'page#product_info'
    get 'order/list', to: 'page#order_list'
    get 'order/form', to: 'page#order_form'
    get 'order/info', to: 'page#order_info'
  end
end
