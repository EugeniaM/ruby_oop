require_relative './data_generators/books_generator.rb'
require_relative './data_generators/readers_generator.rb'
require_relative './data_generators/authors_generator.rb'
require_relative './data_generators/orders_generator.rb'
require_relative './classes/library.rb'

module OopLibrary
	generateBooksData
	generateReadersData
	generateAuthorsData
	generateOrdersData

	begin
	  books = YAML.load(File.open("./data_store/books.yml"))
	  readers = YAML.load(File.open("./data_store/readers.yml"))
	  authors = YAML.load(File.open("./data_store/authors.yml"))
	  orders = YAML.load(File.open("./data_store/orders.yml"))
	rescue ArgumentError => e
	  puts "Could not parse YAML: #{e.message}"
	end	

	library = Library.new(books, orders, readers, authors)

	p library.getTopReader
	p library.getTopBook
	p library.countReadersMostPopular
end