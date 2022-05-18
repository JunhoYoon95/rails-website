Rails.application.routes.draw do
  get 'packs/index'
  get 'packs/show'

  # 이건 안쓸거야
  # get 'home/index'

  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
