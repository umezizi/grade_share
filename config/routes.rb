Rails.application.routes.draw do
  get '/about',   to: 'pages#about'
  get '/signup',  to: 'users#new'
  root to: 'gyms#index'

  # ヘルスチェック用のroutesを設定
  resources :health_check, only: [:index]
end
