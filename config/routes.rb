Rails.application.routes.draw do

  root to: 'application#home'
  get '/about' => 'application#about'

  resources :blog, param: :headline
  resources :designs
  resources :programs

  patch '/blog' => 'blog#update'

end
