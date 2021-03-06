Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_for :librarians, controllers: {
    registrations: 'librarians/registrations',
    sessions: 'librarians/sessions'
  }

  resources :libraries, only: [:index, :new, :create]
  resources :genres, only: [:index, :create]
  resources :books, only: [:index, :create] do
    resources :reservations, only: [:new, :create, :show]
    resources :lendings, only: [:new, :create, :show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
