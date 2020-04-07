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

author4 = Author.new({
  "first_name" => "Frank",
  "last_name" => "Herbert",
  "active" => true
  })
author4.save()

author5 = Author.new({
  "first_name" => "Miguel de",
  "last_name" => "Cervantes",
  "active" => true
  })
author5.save()

author6 = Author.new({
  "first_name" => "Leo",
  "last_name" => "Tolstoy",
  "active" => true
  })
author6.save()

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
  'price' => 5.99,
  'quantity' => 2,
  'author_id' => author2.id
  })
book2.save()

book3 = Book.new({
  'title' => 'The Count of Monte Cristo',
  'synopsis' => 'A sailor is falsely accused of treason by his best friend and imprisoned on an island fortress before escaping and seeking his revenge.',
  'format' => 'Paperback',
  'genre' => 'Adventure',
  'cost' => 3.50,
  'price' => 9.99,
  'quantity' => 1,
  'author_id' => author3.id
  })
book3.save()

book4 = Book.new({
  'title' => 'The Three Musketeers',
  'synopsis' => 'D\'Artagnan arrives in Paris and, seeking to join the king\'s musketeers, goes to see their captain, Tréville. In his haste he offends three of the best musketeers—Porthos, Athos, and Aramis—and challenges each to a duel that afternoon.',
  'format' => 'Paperback',
  'genre' => 'Adventure',
  'cost' => 1.00,
  'price' => 4.99,
  'quantity' => 6,
  'author_id' => author3.id
  })
book4.save()

book5 = Book.new({
  'title' => 'Dune',
  'synopsis' => 'In the far future of humanity, Duke Leto Atreides accepts stewardship of the dangerous desert planet Arrakis, the only source of the most valuable substance in the universe, "the spice", a drug which extends human life and provides accelerated levels of thought.',
  'format' => 'Paperback',
  'genre' => 'Science-Fiction',
  'cost' => 2.50,
  'price' => 7.99,
  'quantity' => 8,
  'author_id' => author4.id
  })
book5.save()

book6 = Book.new({
  'title' => 'Don Quixote',
  'synopsis' => 'The adventures of a noble who reads so many chivalric romances that he loses his mind and decides to become a knight-errant to revive chivalry, under the name Don Quixote de la Mancha.',
  'format' => 'Hardback',
  'genre' => 'Adventure',
  'cost' => 4.50,
  'price' => 12.99,
  'quantity' => 4,
  'author_id' => author5.id
  })
book6.save()

book7 = Book.new({
  'title' => 'The Hobbit',
  'synopsis' => 'Bilbo Baggins lives a simple life with his fellow hobbits in the shire, until the wizard Gandalf arrives and convinces him to join a group of dwarves on a quest to reclaim the kingdom of Erebor.',
  'format' => 'Paperback',
  'genre' => 'Adventure',
  'cost' => 2.50,
  'price' => 7.99,
  'quantity' => 2,
  'author_id' => author1.id
  })
book7.save()

book8 = Book.new({
  'title' => 'War & Peace',
  'synopsis' => 'As the Russian conflict with Napoleon reaches its peak, five aristocratic families face the possibility of their lives being changed forever.',
  'format' => 'Paperback',
  'genre' => 'Epic',
  'cost' => 4.50,
  'price' => 11.99,
  'quantity' => 5,
  'author_id' => author6.id
  })
book8.save()

binding.pry
nil
