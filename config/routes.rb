Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/sohw'
  get 'books/edit'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/top" => "homes#top"
  get "/books" => "books#index"
  get "/show" =>"books#show"
  get "/show/edit" =>"books#edit"
  post "book" => "books#create"
  resources :books, only: [:index, :create]
end
