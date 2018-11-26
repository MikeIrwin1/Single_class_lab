require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def test_library
    library = Library.new()
  end

  def test_books
    library = Library.new()
    assert_equal([{title: "lord_of_the_rings",rental_details: {student_name: "Jeff",date: "01/12/16"}}], library.books)
  end

  def test_book_get
    library = Library.new()
    assert_equal({title: "lord_of_the_rings", rental_details: {student_name: "Jeff",date: "01/12/16"}}, library.book_get('lord_of_the_rings'))
  end
end
