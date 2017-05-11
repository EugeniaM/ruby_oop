require 'yaml'
require_relative '../classes/reader.rb'

module OopLibrary
  def self.generateReadersData
    readers = [
      Reader.new("Ivan Ivanov", "ivan@ivanov.com", "Dnipro", "Mechnikova", "2"),
      Reader.new("Peter Petrov", "peter@petrov.com", "Dnipro", "Artema", "6"),
      Reader.new("John Smith", "john@smith.com", "Dnipro", "Khmelnitskogo", "37"),
      Reader.new("Anton Antonov", "anton@antonov.com", "Dnipro", "Mechnikova", "8"),
      Reader.new("Alexander Alexandrov", "alexander@alexandrov.com", "Dnipro", "Mechnikova", "8"),
      Reader.new("Alexey Alexeev", "alexey@alexeev.com", "Dnipro", "Khmelnitskogo", "2"),
      Reader.new("Bogdan Bogdanov", "bogdan@bogdanov.com", "Dnipro", "Artema", "9"),
      Reader.new("Sergey Sergeev", "sergey@sergeev.com", "Dnipro", "Artema", "15"),
      Reader.new("Mikhail Mikhaylov", "mikhail@mikhaylov.com", "Dnipro", "Mechnikova", "2"),
      Reader.new("Andrey Andreev", "andrey@andreev.com", "Dnipro", "Artema", "22"),
    ]

    File.new("./data_store/readers.yml", "w")
    File.open("./data_store/readers.yml", "w") {|f| f.write(readers.to_yaml) }
  end
end