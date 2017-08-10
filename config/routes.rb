Rails.application.routes.draw do
  
  root 'static_pages#home'
  post '/tweets', to:'static_pages#post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
