Rails.application.routes.draw do
  
  get 'roles/new'

  get 'roles/create'

  get 'offices/new'

  get 'offices/create'

  # Members
  get "/members/search" => 'members#search', as: 'search_members'
  resources :members
  
  # Kinds
  get "/kinds/search" => 'kinds#search', as: 'search_kinds'
  resources :kinds
  
  # Departaments
  get "/departaments/search" => 'departaments#search', as: 'search_departaments'
  resources :departaments
  resources :offices
  resources :roles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
