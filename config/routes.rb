Rails.application.routes.draw do

=begin  get 'doses/new'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/edit'
=end

  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :cocktails, only: [:index, :show, :edit, :new, :create, :destroy] do
    resources :doses, only: [:destroy, :create]
  end
  resources :ingredients, only: [:create]

end
