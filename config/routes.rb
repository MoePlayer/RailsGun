Rails.application.routes.draw do
  get 'danmukus/v2', to: 'danmukus#index2'
  post 'danmukus/v2', to: 'danmukus#create'
  resources :danmukus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
