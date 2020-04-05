require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("../models/book.rb")
require_relative("../models/author.rb")

#INDEX
get "/books" do
  @books = Book.all()
  erb(:"books/index")
end

#NEW
get "/books/new" do
  @authors = Author.all()
  erb(:"books/new")
end

#SHOW
get "/books/:id" do
  id = params['id'].to_i
  @book = Book.find(id)
  erb(:"books/show")
end

#CREATE
post "/books" do
  new_book = Book.new(params)
  new_book.save()
  erb(:"books/create")
end

#EDIT
get "/books/:id/edit" do
  @authors = Author.all()
  id = params['id'].to_i
  @book = Book.find(id)
  erb(:"books/edit")
end
