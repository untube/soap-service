Rails.application.routes.draw do

  post 'countplaces', to: 'consumesoap#respuesta'

  #Search Products
  get 'videos/:title' => 'videos#search_videos'
  resources :videos
  wash_out :wsvideos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
