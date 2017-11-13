Rails.application.routes.draw do
  resources :products

  # 購物車只要一台，單數即可
  # 問題：resouece vs resources
  resource :cart, only: [:show, :destroy] do # 放到購物車(add)、檢視(show)、清空購物車(destroy)
    collection do # 問題：collection & member
      post :add, path: 'add/:id'
    end
  end
end
