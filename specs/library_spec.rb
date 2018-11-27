require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test
  def setup
    @books = [{title: "lord_of_the_rings",rental_details: {student_name: "Jeff",date: "01/12/16"}}]

    @library = Library.new(@books)
  end

  def test_books
    book_list = @library.books()
    assert_equal(@books, book_list)
  end

  def test_book_get
    found_book = @library.book_get("lord_of_the_rings")
    assert_equal({title: "lord_of_the_rings", rental_details: {student_name: "Jeff",date: "01/12/16"}}, found_book)
  end

  def test_book_details
    book_details = @library.book_details("lord_of_the_rings")
    assert_equal({student_name: "Jeff", date: "01/12/16"}, book_details)
  end

  def test_add_book
    book = {title: 'trainspotting',
      rental_details: {
        student_name: '',
        date: ''
      }
    }
    added_book = @library.add_book('trainspotting')
    assert_equal(book, added_book.last)
  end

  def test_change_details
    rental = {title: 'lord_of_the_rings', rental_details: {student_name: 'Chris', date: '25/12/2018'}}
    new_rental = @library.change_details('lord_of_the_rings', 'Chris', '25/12/2018')
    assert_equal(rental, new_rental)
  end

end
