require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("../models/book.rb")
require_relative("../models/author.rb")

get "/genres" do
  @books = Book.all()
  @genres = Book.all_genres()
  erb(:"genres/index")
end

get "/genres/:genre" do
  @books = Book.all()
  genre = params['genre']
  erb(:"genres/show")
end
