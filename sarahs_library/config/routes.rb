Rails.application.routes.draw do
  root 'books#index'

  get 'books' => 'welcome#homepage', as: :books
  post 'books' => 'books#create'
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  delete 'books/:id' => 'books#delete'
  patch 'books/:id' => 'books#update'
end
