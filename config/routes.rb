Rails.application.routes.draw do
  root 'contents#log_out_screen'
  devise_for :users
  # マイページを表示する
  resources :users, only: :show
  post 'users/save' => 'users#save'
  post 'users/save2' => 'users#save2'
  #コンテンツの一覧、詳細ページ
  resources :contents, :only => [:index, :show]
  #投稿のやつ
  get 'comments' => 'comments#index'
  get 'comments/new' => 'comments#new'
  post 'comments' => 'comments#create'
  delete 'comments/:id' => 'comments#destroy'
  get 'comments/:id/edit' => 'comments#edit'
  patch 'comments/:id' => 'comments#update'
end
