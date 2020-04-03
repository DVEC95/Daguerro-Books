require("minitest/autorun")
require("minitest/reporters")
require_relative("../models/book")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBook < Minitest::Test

  def setup
    @book = ({
      'title' => 'The Lord of the Rings',
      'synopsis' => 'The future of civilization rests in the fate of the One Ring, which has been lost for centuries...',
      'format' => 'Hardback',
      'genre' => 'Fantasy',
      'cost' => 8.50,
      'price' => 20.00,
      'quantity' => 10,
      'author_id' => 1,
      'id' => 1
      })
  end

  

end
