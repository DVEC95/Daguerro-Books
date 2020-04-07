require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("../models/book.rb")
require_relative("../models/author.rb")

#INDEX
get "/authors" do
  @authors = Author.all()
  erb(:"authors/index")
end

get "/authors/asc" do
  @authors = Author.sort_by_name_asc()
  erb(:"authors/asc")
end

get "/authors/desc" do
  @authors = Author.sort_by_name_desc()
  erb(:"authors/desc")
end

#NEW
get "/authors/new" do
  erb(:"authors/new")
end

#SHOW
get "/authors/:id" do
  @books = Book.all()
  id = params['id'].to_i
  @author = Author.find(id)
  erb(:"authors/show")
end

#CREATE
post "/authors" do
  new_author = Author.new(params)
  new_author.save
  erb(:"authors/create")
end

#DELETE
post "/authors/:id/delete" do
  id = params['id'].to_i
  author = Author.find(id)
  author.delete_books
  author.delete
  redirect("/authors")
end

#EDIT
get "/authors/:id/edit" do
  @authors = Author.all()
  id = params['id'].to_i
  @author = Author.find(id)
  erb(:"authors/edit")
end

#UPDATE
post "/authors/:id" do
  author = Author.new(params)
  author.update()
  redirect("/authors/" + params["id"])
end
