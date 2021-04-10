Rails.application.routes.draw do
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
