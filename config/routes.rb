Rails.application.routes.draw do

  root to: 'application#home'

  resources :blog, param: :headline
  resources :design
  resources :program

  patch '/blog' => 'blog#update'

end
