Rails.application.routes.draw do
  get 'posts/index'
  resources :posts
    collection do
      post :confirm
    end
end
