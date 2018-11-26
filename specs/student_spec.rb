require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    # Arrange
    student = Student.new('Billy', 'E27')
    # Act
    # Assert
    assert_equal('Billy', student.name)
  end

  def test_student_cohort
    # Arrange
    student = Student.new('Billy','E27')
    assert_equal('E27', student.cohort)
  end

  def test_student_talking
    student = Student.new('Alice', 'E28')
    assert_equal('I can talk!', student.phrase)
  end

  def test_student_fave_lang
    student = Student.new('Alice', 'E28')
    assert_equal('I love Ruby!', student.fave_lang('Ruby'))
  end
end
