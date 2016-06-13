Rails.application.routes.draw do

  root to: 'application#home'

  resources :blog, param: :headline
  resources :designs
  resources :programs

  patch '/blog' => 'blog#update'

end
