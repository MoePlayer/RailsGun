Rails.application.routes.draw do
  get 'danmakus/v2', to: 'danmakus#index2'
  post 'danmakus/v2', to: 'danmakus#create'
  #resources :danmukus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
