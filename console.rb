require("pry-byebug")

require_relative("./models/author")
require_relative("./models/book")

Book.delete_all()
Author.delete_all()

#AUTHOR DATA ---------
author1 = Author.new({
  "first_name" => "J.R.R.",
  "last_name" => "Tolkien",
  "active" => true
  })
author1.save()

author2 = Author.new({
  "first_name" => "George",
  "last_name" => "Orwell",
  "active" => true
  })
author2.save()

author3 = Author.new({
  "first_name" => "Alexandre",
  "last_name" => "Dumas",
  "active" => true
  })
author3.save()

#BOOK DATA -----------
book1 = Book.new({
  'title' => 'The Lord of the Rings',
  'synopsis' => 'A Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring.',
  'format' => 'Hardback',
  'genre' => 'Fantasy',
  'cost' => 8.50,
  'price' => 20.00,
  'quantity' => 0,
  'author_id' => author1.id
  })
book1.save()

book2 = Book.new({
  'title' => '1984',
  'synopsis' => 'A bureaucrat loses his identity while living under a repressive regime.',
  'format' => 'Paperback',
  'genre' => 'Dystopian',
  'cost' => 2.00,
  'price' => 7.99,
  'quantity' => 2,
  'author_id' => author2.id
  })
book2.save()

book3 = Book.new({
  'title' => 'The Count of Monte Cristo',
  'synopsis' => 'A sailor is falsely accused of treason by his best friend and imprisoned on an island fortress before escaping and seeking his revenge.',
  'format' => 'Paperback',
  'genre' => 'Adventure',
  'cost' => 1.00,
  'price' => 5.99,
  'quantity' => 1,
  'author_id' => author3.id
  })
book3.save()

binding.pry
nil
