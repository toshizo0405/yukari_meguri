Rails.application.routes.draw do

  #管理側
  devise_for :managers,skip:[:registrations,:passwords], path: :admin, controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    root to: "homes#top"
    resources :posts,only:[:index,:show,:destroy] do
      resources :comments,only:[:destroy]
    end

    resources :members,only:[:index,:show,:edit,:update]

  end



  #会員側
  devise_for :members,skip:[:passwords], path: :public, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :member do
    post 'members/guest_sign_in',to: 'public/sessions#guest_sign_in'
  end

  scope module: :public do
    root 'homes#top'#トップ画面
    get 'about' => 'homes#about'

    get 'members/unsubscribe' => 'members#unsubscribe'#退会確認画面
    patch 'members/withdraw' => 'members#withdraw' #退会処理
    get 'members/my_page' => 'members#show'#マイページ
    get 'members/information/edit' => 'members#edit'#会員の登録情報編集画面
    patch 'members/information' => 'members#update'#会員の登録情報更新
    get 'members' => 'members#index'#会員の投稿履歴一覧画面
    resources :members do
      member do
       get :bookmarks
      end
    end
    get 'posts/complete' => 'posts#complete'#投稿完了画面
    post 'posts/unsubscribe' => 'posts#unsubscribe'#投稿内容の保存
    get 'posts/:id/confirm' => 'posts#confirm',as: :confirm#投稿確認画面
    resources :posts do
      resource :bookmarks,only: [:create,:destroy]
      resources:comments,only: [:create,:destroy]
    end
    post 'posts/complete' => 'posts#complete'#投稿完了画面




  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
