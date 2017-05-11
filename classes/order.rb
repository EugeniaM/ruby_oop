module OopLibrary
  class Order
    attr_accessor :book, :reader
    def initialize(book, reader)
      @book = book
      @reader = reader
      @date = Time.new
    end
  end
end