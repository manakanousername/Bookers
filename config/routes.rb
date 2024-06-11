Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/sohw'
  get 'books/edit'
  get 'book/new'
  get 'book/index'
  get 'book/show'
  get 'book/edit'
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/top" => "homes#top"
end
