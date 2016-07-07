Rails.application.routes.draw do


  get 'books' => 'welcome#homepage', as: :books
  post 'books' => 'books#create'
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  delete 'books/:id' => 'books#delete'
  patch 'books/:id' => 'books#update'

  get 'authors' => 'authors#index', as: :authors
  post 'authors' => 'authors#create'
  get 'authors/new' => 'authors#new', as: :new_author
  get 'authors/:id' => 'authors#show', as: :author
  get 'authors/:id/edit' => 'authors#edit', as: :edit_author
  delete 'authors/:id' => 'authors#delete'
  patch 'authors/:id' => 'authors#update'

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete'

  get 'registration' => 'users#new', as: :new_user
  post 'registration' => 'users#create', as: :create_user
  

  root 'books#index'
end
