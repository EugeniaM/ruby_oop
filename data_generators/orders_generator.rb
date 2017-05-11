require 'yaml'
require_relative '../classes/order.rb'

module OopLibrary
  def self.generateOrdersData
    orders = [
      Order.new("The Odyssey", "Mikhail Mikhaylov"),
      Order.new("Crime and Punishment", "Mikhail Mikhaylov"),
      Order.new("The Sound and the Fury", "Ivan Ivanov"),
      Order.new("Nineteen Eighty Four", "Peter Petrov"),
      Order.new("Harry Potter and the Philosopher’s Stone", "Bogdan Bogdanov"),
      Order.new("The Odyssey", "Ivan Ivanov"),
      Order.new("In Search of Lost Time", "Andrey Andreev"),
      Order.new("Moby Dick", "Sergey Sergeev"),
      Order.new("Ulysses", "Peter Petrov"),
      Order.new("Hamlet", "Bogdan Bogdanov"),
      Order.new("Harry Potter and the Chamber of Secrets", "Bogdan Bogdanov"),
      Order.new("The Brothers Karamazov", "Ivan Ivanov"),
      Order.new("The Giver", "Peter Petrov"),
      Order.new("One Hundred Years of Solitude", "John Smith"),
      Order.new("War and Peace", "John Smith"),
      Order.new("Lolita", "Andrey Andreev"),
      Order.new("The Divine Comedy", "Anton Antonov"),
      Order.new("Harry Potter and the Prisoner of Azkaban", "Bogdan Bogdanov"),
      Order.new("The Giver", "Anton Antonov"),
      Order.new("The Adventures of Huckleberry Finn", "Alexander Alexandrov"),
      Order.new("One Hundred Years of Solitude", "Anton Antonov"),
      Order.new("Harry Potter and the Philosopher’s Stone", "Alexander Alexandrov"),
      Order.new("The Odyssey", "Bogdan Bogdanov"),
      Order.new("Don Quixote", "Ivan Ivanov"),
      Order.new("Pride and Prejudice", "Sergey Sergeev"),
      Order.new("Harry Potter and the Philosopher’s Stone", "Alexander Alexandrov"),
      Order.new("Nineteen Eighty Four", "Ivan Ivanov"),
      Order.new("The Odyssey", "Sergey Sergeev"),
      Order.new("The Iliad", "Alexey Alexeev"),
      Order.new("The Giver", "Andrey Andreev"),
      Order.new("One Hundred Years of Solitude", "Ivan Ivanov"),
      Order.new("Nineteen Eighty Four", "Sergey Sergeev"),
    ]

    File.new("./data_store/orders.yml", "w")
    File.open("./data_store/orders.yml", "w") {|f| f.write(orders.to_yaml) }
  end
end