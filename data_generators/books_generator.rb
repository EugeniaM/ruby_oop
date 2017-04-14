require 'yaml'
require_relative '../classes/book.rb'

module OopLibrary
	def self.generateBooksData
		books = [
			Book.new("Don Quixote", "Miguel de Cervantes"),
			Book.new("In Search of Lost Time", "Marcel Proust"),
			Book.new("Ulysses", "James Joyce"),
			Book.new("The Odyssey", "Homer"),
			Book.new("War and Peace", "Leo Tolstoy"),
			Book.new("Moby Dick", "Herman Melville"),
			Book.new("The Divine Comedy", "Dante Alighieri"),
			Book.new("Hamlet", "William Shakespeare"),
			Book.new("The Adventures of Huckleberry Finn", "Mark Twain"),
			Book.new("The Great Gatsby", "F. Scott Fitzgerald"),
			Book.new("The Iliad", "Homer"),
			Book.new("One Hundred Years of Solitude", "Gabriel Garcia Marquez"),
			Book.new("Madame Bovary", "Gustave Flaubert"),
			Book.new("Crime and Punishment", "Fyodor Dostoyevsky"),
			Book.new("The Brothers Karamazov", "Fyodor Dostoyevsky"),
			Book.new("Pride and Prejudice", "Jane Austen"),
			Book.new("The Sound and the Fury", "William Faulkner"),
			Book.new("Lolita", "Vladimir Nabokov"),
			Book.new("Nineteen Eighty Four", "George Orwell"),
			Book.new("Alice's Adventures in Wonderland", "Lewis Carroll"),
			Book.new("Harry Potter and the Philosopher’s Stone", "J. K. Rowling"),
			Book.new("Harry Potter and the Chamber of Secrets", "J. K. Rowling"),
			Book.new("Harry Potter and the Prisoner of Azkaban", "J. K. Rowling"),
			Book.new("Harry Potter and the Goblet of Fire", "J. K. Rowling"),
			Book.new("Harry Potter and the Order of the Phoenix", "J. K. Rowling"),
			Book.new("Harry Potter and the Half-Blood Prince", "J. K. Rowling"),
			Book.new("Harry Potter and the Deathly Hallows", "J. K. Rowling"),
			Book.new("The Giver", "Lois Lowry")
		]

		File.new("./data_store/books.yml", "w")
		File.open("./data_store/books.yml", "w") {|f| f.write(books.to_yaml) }
	end
end