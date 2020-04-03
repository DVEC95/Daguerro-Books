require_relative("../db/sqlrunner")

class Author

  attr_accessor :first_name, :last_name, :active
  attr_reader :id

  def initialize(author)
    @first_name = author['first_name']
    @last_name = author['last_name']
    @active = author['active']
    @id = author['id'].to_i if author['id']
  end

  def save()
    sql = "INSERT INTO authors (first_name, last_name, active)
          VALUES ($1, $2, $3) RETURNING id"
    values = [@first_name, @last_name, @active]
    @id = SQLRunner.run(sql, values)[0]['id'].to_i
  end

  def update()
    sql = "UPDATE authors SET (first_name, last_name, active)
          = ($1, $2, $3) WHERE id = $4"
    values = [@first_name, @last_name, @active, @id]
    SQLRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM authors WHERE id = $1"
    values = [@id]
    SQLRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM authors"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM authors"
    authors = SQLRunner.run(sql)
    return authors.map {|author| Author.new(author)}
  end

end
