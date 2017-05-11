require 'yaml'
require_relative '../classes/author.rb'

module OopLibrary
  def self.generateAuthorsData
    authors = [
      Author.new("Miguel de Cervantes", "1547-1616"),
      Author.new("Marcel Proust", "1871-1922"),
      Author.new("James Joyce", "1882-1941"),
      Author.new("Homer", "9th century BC - 8th century BC"),
      Author.new("Leo Tolstoy", "1828-1910"),
      Author.new("Herman Melville", "1819-1891"),
      Author.new("Dante Alighieri", "1265-1321"),
      Author.new("William Shakespeare", "1564-1616"),
      Author.new("Mark Twain", "1835-1910"),
      Author.new("F. Scott Fitzgerald", "1896-1940"),
      Author.new("Gabriel Garcia Marquez", "1927-2014"),
      Author.new("Gustave Flaubert", "1821-1880"),
      Author.new("Fyodor Dostoyevsky", "1821-1881"),
      Author.new("Jane Austen", "1775-1817"),
      Author.new("William Faulkner", "1897-1962"),
      Author.new("Vladimir Nabokov", "1899-1977"),
      Author.new("George Orwell", "1903-1950"),
      Author.new("Lewis Carroll", "1832-1898"),
      Author.new("J. K. Rowling", "1965"),
      Author.new("Lois Lowry", "1937")
    ]

    File.new("./data_store/authors.yml", "w")
    File.open("./data_store/authors.yml", "w") {|f| f.write(authors.to_yaml) }
  end
end