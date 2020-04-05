require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("controllers/book_controller")

get "/" do
  erb(:index)
end
