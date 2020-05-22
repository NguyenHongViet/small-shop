Rails.application.routes.draw do
  namespace :admin do
    root to: 'login#login'

    get 'login', to: 'login#login'
    get 'password', to: 'login#password'

    get 'dashboard', to: "page#dashboard"
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

  root to: 'page#home'

  get 'home', to: 'page#home'
  get 'product', to: 'page#product'
  get 'cart', to: 'page#cart'
  get 'transport', to: 'page#transport'
  get 'payment', to: 'page#payment'
  get 'success', to: 'page#success'
end
