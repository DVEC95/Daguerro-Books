require_relative("../db/sqlrunner")
require_relative("./author")

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

  def markup()
    markup = @price.to_f - @cost.to_f
    return '%.2f' % markup
  end

  def self.delete_all()
    sql = "DELETE FROM books"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM books"
    books = SQLRunner.run(sql)
    return books.map {|book| Book.new(book)}
  end

  def self.find(id)
    sql = "SELECT * FROM books WHERE id = $1"
    values = [id]
    book = SQLRunner.run(sql, values).first()
    return nil if book == nil
    return Book.new(book)
  end

  def author()
    sql = "SELECT * FROM authors WHERE id = $1"
    values = [@author_id]
    author = SQLRunner.run(sql, values).first
    return author['first_name'] + " " + author['last_name']
  end

  def author_active()
    sql = "SELECT * FROM authors WHERE id = $1"
    values = [@author_id]
    author = SQLRunner.run(sql, values).first
    return author['active']
  end

  def self.sort_by_title_asc()
    sql = "SELECT * FROM books ORDER BY title ASC"
    books = SQLRunner.run(sql)
    return books.map {|book| Book.new(book)}
  end

  def self.sort_by_title_desc()
    sql = "SELECT * FROM books ORDER BY title DESC;"
    books = SQLRunner.run(sql)
    return books.map {|book| Book.new(book)}
  end


end
