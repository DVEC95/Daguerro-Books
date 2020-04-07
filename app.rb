require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("controllers/book_controller")
require_relative("controllers/author_controller")
require_relative("controllers/genre_controller")

get "/" do
  erb(:index)
end
