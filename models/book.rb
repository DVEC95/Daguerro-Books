require_relative("../db/sqlrunner")

class Book

  attr_accessor :title, :synopsis, :format, :genre, :cost, :price, :quantity, :author_id
  attr_reader :id

  def initialize(book)
    @title = book['title']
    @synopsis = book['synopsis']
    @format = book['format']
    @genre = book['genre']
    @cost = book['cost']
    @price = book['price']
    @quantity = book['quantity']
    @author_id = book['author_id'].to_i
    @id = book['id'].to_i if book['id']
  end

end
