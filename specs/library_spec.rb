require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test
  def setup
    @books = [{title: "lord_of_the_rings",rental_details: {student_name: "Jeff",date: "01/12/16"}}]

  end

  def test_library
    library = Library.new()
  end

  def test_books
    library = Library.new()
    assert_equal(@books, library.books)
  end

  def test_book_get
    library = Library.new()
    assert_equal({title: "lord_of_the_rings", rental_details: {student_name: "Jeff",date: "01/12/16"}}, library.book_get('lord_of_the_rings'))
  end

  def test_book_details
    library = Library.new()
    assert_equal({student_name: "Jeff", date: "01/12/16"}, library.book_details('lord_of_the_rings'))
  end

  def test_add_book
    book = {title: 'trainspotting',
      rental_details: {
        student_name: '',
        date: ''
      }
    }
    library = Library.new()
    library.add_book('trainspotting')
    assert_equal(book,library.book_get('trainspotting'))
  end

  def test_change_details
    rental = {title: 'lord_of_the_rings', rental_details: {student_name: 'Chris', date: '25/12/2018'}}
    library = Library.new()

    new_rental = library.change_details('lord_of_the_rings', 'Chris', '25/12/2018')

    assert_equal(rental, new_rental)
  end

end
