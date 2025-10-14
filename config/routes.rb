Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # L4ページを表示
  get 'top/main'
  post 'top/login'
  root 'top#main'
  get 'top/logout'

end


