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

  def save()
    sql = "INSERT INTO books (title, synopsis, format, genre, cost, price, quantity, author_id)
          VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id"
    values = [@title, @synopsis, @format, @genre, @cost, @price, @quantity, @author_id]
    @id = SQLRunner.run(sql, values)[0]['id'].to_i
  end

  def update()
    sql = "UPDATE books SET (title, synopsis, format, genre, cost, price, quantity, author_id)
          = ($1, $2, $3, $4, $5, $6, $7, $8) WHERE id = $9"
    values = [@title, @synopsis, @format, @genre, @cost, @price, @quantity, @author_id, @id]
    SQLRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM books WHERE id = $1"
    values = [@id]
    SQLRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM books"
    SQLRunner.run(sql)
  end

end
