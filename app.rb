require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("controllers/book_controller")
require_relative("controllers/author_controller")

get "/" do
  erb(:index)
end
