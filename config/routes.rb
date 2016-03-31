Rails.application.routes.draw do

  root to: 'application#home'

  resources :blog, param: :headline

  patch '/blog' => 'blog#update'

end
