Rails.application.routes.draw do
  root 'home#index'
  
  get "users" => "users#index"
  get "users/new" => "users#new"
  post "users" => "users#create"
  get "users/:id/edit" => "users#edit", as: :edit_user
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"
  get "users/:id" => "users#show", as: :user

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
  get "groups" => "groups#index"
  get "groups/new" => "groups#new" , as: :new_group
  post "groups" => "groups#create"
  get "groups/:id/edit" => "groups#edit", as: :edit_group
  patch "groups/:id" => "groups#update"
  delete "groups/:id" => "groups#destroy"
  get "groups/:id" => "groups#show", as: :group

  get "stories" => "stories#index"
  get "stories/new" => "stories#new" 
  post "stories" => "stories#create"
  get "stories/:id/edit" => "stories#edit", as: :edit_story
  patch "stories/:id" => "stories#update"
  delete "stories/:id" => "stories#destroy"
  get "stories/:id" => "stories#show", as: :story

  #route for adding group to story
  get '/group_story' => "stories#group"

 

  resources :users do 
  resources :stories
  resources :groups
  end

end
