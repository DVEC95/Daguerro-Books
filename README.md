# Book Shop

A stocktaking application with CRUD methodologies and RESTful routes, designed for use with data related to books.

## How to Run

1. Navigate to Book Shop directory.
2. Create Book Shop database.
  ```
    createdb BookShop
  ```
3. Connect Book Shop database with Book Shop SQL file.
  ```
    psql -d BookShop -f db/bookshop.sql
  ```
4. (OPTIONAL) Run console to populate database with seed data.
  ```
    ruby console.rb
  ```
5. Run application file.
  ```
    ruby app.rb
  ```
6. Navigate to local host using browser.
  ```
    localhost:4567
  ```

## Built With

* Ruby
* PostgreSQL
* Sinatra
* Pg
* Pry
