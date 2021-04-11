Rails.application.routes.draw do
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  get 'todolist/:id' =>'todolists#show', as:'todolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
