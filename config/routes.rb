Rails.application.routes.draw do
  root 'contents#log_out_screen'
  devise_for :users
  # マイページを表示する
  resources :users, only: :show
  post 'users/save' => 'users#save'
  #コンテンツの一覧、詳細ページ
  resources :contents, :only => [:index, :show]
  #投稿のやつ
  get '/contents/logout' => 'contents#log_out_screen'
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  get 'users/:id' => 'users#show'
  delete 'tweets/:id' => 'tweets#destroy'
  get 'tweets/:id/edit' => 'tweets#edit'
  patch 'tweets/:id' => 'tweets#update'
end
