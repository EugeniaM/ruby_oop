module OopLibrary
	class Library

		@@ordered_books_count = {}
		@@readers_count = {}
		
		def initialize(books, orders, readers, authors)
			@books = books
			@orders = orders
			@readers = readers
			@authors = authors

			@orders.each do |order|
				addToStatistics(order)
			end
		end

		def getTopReader
			top_readers = getTop(@@readers_count, 1)
			"The top reader is: #{top_readers.join(', ')}"
		end

		def getTopBook
			top_books = getTop(@@ordered_books_count, 1)
			"The top book is: #{top_books.join(', ')}"
		end

		def countReadersMostPopular
			top_three_books = getTop(@@ordered_books_count, 3)
			count_readers = @orders.map { |order| order.reader if top_three_books.include? (order.book)}.compact.uniq.length

			"The number of people ordered one of the three most popular books: #{count_readers}"
		end

		def addOrder(order)
			@orders << order
			addToStatistics(order)
		end

		private

		def getTop(subject, top_qty)
			top_subjects = subject.sort_by { |key, value| -value }.first(top_qty).to_h.keys
		end

		def addToStatistics(order)
			(@@ordered_books_count.key? (order.book)) ? 
				(@@ordered_books_count[order.book] += 1) : 
				(@@ordered_books_count[order.book] = 1)

			(@@readers_count.key? (order.reader)) ? 
				(@@readers_count[order.reader] += 1) : 
				(@@readers_count[order.reader] = 1)
		end
	end
end