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

  scope module: :public do

  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
