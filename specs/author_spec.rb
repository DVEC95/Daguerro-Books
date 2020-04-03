require("minitest/autorun")
require("minitest/reporters")
require_relative("../models/author")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestAuthor < Minitest::Test

  def setup
    @author = Author.new({
      "first_name" => "J.R.R.",
      "last_name" => "Tolkien",
      "active" => true,
      "id" => 1
      })
  end

  def test_get_name
    assert_equal("J.R.R.", @author.first_name)
    assert_equal("Tolkien", @author.last_name)
    assert_equal("J.R.R. Tolkien", @author.fullname)
  end

  def test_active
    assert_equal(true, @author.active)
  end

  def test_get_id
    assert_equal(1, @author.id)
  end

end
