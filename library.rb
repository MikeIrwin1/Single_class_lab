class Library
  attr_reader :books

  def initialize()
    @books =
    [
      {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
        }
      }
    ]
  end

  def book_get(name)
    for book in @books
      if book[:title] == name
        return book
      end
    end
  end

  def book_details(name)
    for book in @books
      if book[:title] == name
        return book[:rental_details]
      end
    end
  end

  def add_book(name)
    book = {title: name,
    rental_details: {
      student_name: "",
      date: ""
      }
    }
    @books.push(book)
  end

end
