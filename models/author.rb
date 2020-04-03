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

end
