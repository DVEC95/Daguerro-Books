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
  new_book.save
  erb(:"books/create")
end

#DELETE
post "/books/:id/delete" do
  id = params["id"].to_i
  book = Book.find(id)
  book.delete
  redirect("/books")
end

#EDIT
get "/books/:id/edit" do
  @authors = Author.all()
  @books = Book.all()
  id = params['id'].to_i
  @book = Book.find(id)
  erb(:"books/edit")
end

#UPDATE
post "/books/:id" do
  book = Book.new(params)
  book.update()
  redirect("/books/" + params["id"])
end
