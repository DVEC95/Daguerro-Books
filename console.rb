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

author7 = Author.new({
  "first_name" => "Robert Louis",
  "last_name" => "Stevenson",
  "active" => true
  })
author7.save()

author8 = Author.new({
  "first_name" => "Mary",
  "last_name" => "Shelley",
  "active" => true
  })
author8.save()

author9 = Author.new({
  "first_name" => "Bram",
  "last_name" => "Stoker",
  "active" => true
  })
author9.save()

author10 = Author.new({
  "first_name" => "Sir Arthur Conan",
  "last_name" => "Doyle",
  "active" => true
  })
author10.save()

author11 = Author.new({
  "first_name" => "Agatha",
  "last_name" => "Cristie",
  "active" => true
  })
author11.save()

author12 = Author.new({
  "first_name" => "Meryvn",
  "last_name" => "Peake",
  "active" => true
  })
author12.save()

author13 = Author.new({
  "first_name" => "Douglas",
  "last_name" => "Adams",
  "active" => true
  })
author13.save()

author14 = Author.new({
  "first_name" => "Joseph",
  "last_name" => "Heller",
  "active" => true
  })
author14.save()

author15 = Author.new({
  "first_name" => "Aldous",
  "last_name" => "Huxley",
  "active" => true
  })
author15.save()

author16 = Author.new({
  "first_name" => "Ursula K.",
  "last_name" => "Le Guin",
  "active" => true
  })
author16.save()

author17 = Author.new({
  "first_name" => "Herman",
  "last_name" => "Melville",
  "active" => true
  })
author17.save()

author18 = Author.new({
  "first_name" => "Philip K.",
  "last_name" => "Dick",
  "active" => true
  })
author18.save()

author19 = Author.new({
  "first_name" => "Fyodor",
  "last_name" => "Dostoevsky",
  "active" => true
  })
author19.save()

author20 = Author.new({
  "first_name" => "Franz",
  "last_name" => "Kafka",
  "active" => true
  })
author20.save()

author21 = Author.new({
  "first_name" => "T. H.",
  "last_name" => "White",
  "active" => true
  })
author21.save()

#BOOK DATA -----------
book1 = Book.new({
  'title' => 'The Lord of the Rings',
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
  'format' => 'Paperback',
  'genre' => 'Epic',
  'cost' => 4.50,
  'price' => 11.99,
  'quantity' => 5,
  'author_id' => author6.id
  })
book8.save()

book9 = Book.new({
  'title' => 'Treasure Island',
  'format' => 'Paperback',
  'genre' => 'Adventure',
  'cost' => 0.50,
  'price' => 4.99,
  'quantity' => 7,
  'author_id' => author7.id
  })
book9.save()

book10 = Book.new({
  'title' => 'Strange Case of Dr Jekyll and Mr Hyde',
  'format' => 'Paperback',
  'genre' => 'Horror',
  'cost' => 0.50,
  'price' => 4.99,
  'quantity' => 7,
  'author_id' => author7.id
  })
book10.save()

book11 = Book.new({
  'title' => 'Frankenstein; or, The Modern Prometheus',
  'format' => 'Paperback',
  'genre' => 'Horror',
  'cost' => 0.70,
  'price' => 4.99,
  'quantity' => 5,
  'author_id' => author8.id
  })
book11.save()

book12 = Book.new({
  'title' => 'Dracula',
  'format' => 'Paperback',
  'genre' => 'Horror',
  'cost' => 0.60,
  'price' => 4.99,
  'quantity' => 2,
  'author_id' => author9.id
  })
book12.save()

book13 = Book.new({
  'title' => 'The Adventures of Sherlock Holmes',
  'format' => 'Paperback',
  'genre' => 'Mystery',
  'cost' => 2.50,
  'price' => 6.99,
  'quantity' => 2,
  'author_id' => author10.id
  })
book13.save()

book14 = Book.new({
  'title' => 'And Then There Were None',
  'format' => 'Paperback',
  'genre' => 'Mystery',
  'cost' => 2.50,
  'price' => 6.99,
  'quantity' => 2,
  'author_id' => author11.id
  })
book14.save()

book15 = Book.new({
  'title' => 'The Gormenghast Trilogy',
  'format' => 'Hardback',
  'genre' => 'Fantasy',
  'cost' => 6.50,
  'price' => 19.99,
  'quantity' => 0,
  'author_id' => author12.id
  })
book15.save()

book15 = Book.new({
  'title' => 'The Hitchhiker\'s Guide to the Galaxy',
  'format' => 'Paperback',
  'genre' => 'Science-Fiction',
  'cost' => 2.50,
  'price' => 7.99,
  'quantity' => 4,
  'author_id' => author13.id
  })
book15.save()

book16 = Book.new({
  'title' => 'Catch-22',
  'format' => 'Paperback',
  'genre' => 'War',
  'cost' => 1.50,
  'price' => 7.99,
  'quantity' => 0,
  'author_id' => author14.id
  })
book16.save()

book17 = Book.new({
  'title' => 'Brave New World',
  'format' => 'Paperback',
  'genre' => 'Dystopian',
  'cost' => 1.50,
  'price' => 6.99,
  'quantity' => 3,
  'author_id' => author15.id
  })
book17.save()

book18 = Book.new({
  'title' => 'A Wizard of Earthsea',
  'format' => 'Paperback',
  'genre' => 'Fantasy',
  'cost' => 2.00,
  'price' => 8.99,
  'quantity' => 0,
  'author_id' => author16.id
  })
book18.save()

book19 = Book.new({
  'title' => 'Moby Dick',
  'format' => 'Paperback',
  'genre' => 'Adventure',
  'cost' => 1.00,
  'price' => 6.99,
  'quantity' => 4,
  'author_id' => author17.id
  })
book19.save()

book20 = Book.new({
  'title' => 'Do Androids Dream of Electric Sheep?',
  'format' => 'Paperback',
  'genre' => 'Science-Fiction',
  'cost' => 1.00,
  'price' => 5.99,
  'quantity' => 0,
  'author_id' => author18.id
  })
book20.save()

book21 = Book.new({
  'title' => 'Crime and Punishment',
  'format' => 'Paperback',
  'genre' => 'Mystery',
  'cost' => 1.50,
  'price' => 7.99,
  'quantity' => 2,
  'author_id' => author19.id
  })
book21.save()

book22 = Book.new({
  'title' => 'The Metamorphosis',
  'format' => 'Paperback',
  'genre' => 'Mystery',
  'cost' => 0.25,
  'price' => 3.99,
  'quantity' => 6,
  'author_id' => author20.id
  })
book22.save()

book23 = Book.new({
  'title' => 'The Once and Future King',
  'format' => 'Paperback',
  'genre' => 'Fantasy',
  'cost' => 4.25,
  'price' => 10.99,
  'quantity' => 3,
  'author_id' => author21.id
  })
book23.save()

binding.pry
nil
