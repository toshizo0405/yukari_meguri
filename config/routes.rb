Rails.application.routes.draw do

  #管理側
  devise_for :managers,skip:[:registrations,:passwords],controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do

  end

  #会員側
  devise_for :members,skip:[:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :member do
    post 'members/guest_sign_in',to: 'public/sessions#guest_sign_in'
  end

  scope module: :public do
    root 'homes#top'
    get 'members/unsubscribe' => 'members#unsubscribe'#退会確認画面
    patch 'members/withdraw' => 'members#withdraw' #退会処理
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
