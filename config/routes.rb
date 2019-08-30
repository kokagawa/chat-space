Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'groups#index'
  resources :users, only: [:edit, :update,:index]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    resources :messages, only: [:index, :create]
    namespace :api do #APIのコントローラを動かすための記述
      resources :messages, only: :index, defaults: { format: 'json' } #defaultsオプションを利用して、このルーティングが来たらjson形式でレスポンスするよう指定。
    end
  
end
end
