Rails.application.routes.draw do

  root to: 'application#home'
  get "/blog" => "blog#index"

end
