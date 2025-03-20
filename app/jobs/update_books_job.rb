class UpdateBooksJob < ApplicationJob
  queue_as :default

  def perform(*args)
    books = Book.all

    books.each do |book| 
      if book.favorite === true
        book.update(category: "non fiction")
      end
    end
  end
end
