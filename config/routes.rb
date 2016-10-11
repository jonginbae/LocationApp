Rails.application.routes.draw do
  resources :activity_groups
  resources :students
  resources :activities
  resources :teachers

  get '/login' => 'login#index' , :as => 'login'
  post '/login' => 'login#create'
  get '/logout' => 'login#destroy' , :as =>"logout" 
end
