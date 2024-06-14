Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "homes#top"
  get "/books" => "books#index"
  post "books" => "books#create"
  resources :all_books, only: [:index, :create, :update],as: "all_book"
  patch "books/:id" => "books#update",as: "update_book"
  patch "books/:id/edit" => "books#update"
  delete "books/:id" => "books#destroy",as: "destroy_book"
  get "books/:id" =>"books#show",as: "book"
  get "books/:id/edit" =>"books#edit",as: "edit_book"
end
