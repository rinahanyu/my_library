Rails.application.routes.draw do
  get 'genres/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_for :librarians, controllers: {
    registrations: 'librarians/registrations',
    sessions: 'librarians/sessions'
  }

  resources :libraries, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
