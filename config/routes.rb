Rails.application.routes.draw do
  get 'tops/index'
   # それぞれ設定することにより、userとadminで個別のコントローラを使えるようになる。
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'users/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  root 'tops#index'
  end
