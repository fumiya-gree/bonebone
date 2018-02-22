Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  # マイページを表示する
  get 'users/:id' => 'users#show'
  post 'users/save' => 'users#save'
end
