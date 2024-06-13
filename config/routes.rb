Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/top" => "homes#top"
  get "/books" => "books#index"
  post "books" => "books#create"
  resources :books, only: [:index, :create, :update]
  patch "books/:id" => "books#update",as: "update_book"
  get "books/:id" =>"books#show",as: "book"
  get "books/:id/edit" =>"books#edit",as: "edit_book"
end
