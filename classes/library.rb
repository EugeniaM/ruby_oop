module OopLibrary
  class Library

    def initialize(books, orders, readers, authors)
      @books = books
      @orders = orders
      @readers = readers
      @authors = authors
    end

    def getTopReader
      getTop(:reader, 1).keys[0]
    end

    def getTopBook
      getTop(:book, 1).keys[0]
    end

    def countReadersOfPopularBooks
      getTop(:book, 3).values.flatten.map(&:reader).compact.uniq.size
    end

    private

    def getTop(subject, qty)
      @orders.group_by(&subject.to_sym).sort_by{ |key, orders| orders.size}.last(qty).to_h
    end

  end
end