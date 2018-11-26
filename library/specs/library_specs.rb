require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')



class TestLibrary < MiniTest::Test

  def setup
  @books =
      [{
        title: "lord_of_the_rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      },
      {
        title: "1984",
        rental_details: {
        student_name: "Mark",
        date: "23/04/18"
        }
      },
      {
        title: "animal_farm",
        rental_details: {
         student_name: "Bob",
         date: "01/11/18"
        }
      },
      {
          title: "lord_of_the_flies",
          rental_details: {
           student_name: "John",
           date: "08/05/18"
          }
      },
      {
          title: "catcher_in_the_rye",
          rental_details: {
           student_name: "Tracy",
           date: "15/07/18"
          }
      },
      {
          title: "brave_new_world",
          rental_details: {
           student_name: "Alice",
           date: "22/08/18"
          }
  }]
  @expected_book = {:title=>"1984", :rental_details=>{:student_name=>"Mark", :date=>"23/04/18"}}
  @expected_details = {:student_name=>"Alice", :date=>"22/08/18"}
end

  def test_get_books
    books_output = Library.new(@books)
  end

  def test_get_book_by_title__1984
    books_output = Library.new(@books)
    result = books_output.get_book_by_title("1984")
    assert_equal(@expected_book, result)
  end

  def test_return_rental_details__brave__new__world
    books_output = Library.new(@books)
    result = books_output.return_rental_details("brave_new_world")
    assert_equal(@expected_details, result)
  end

  def test_add_new_book
    books_output = Library.new(@books)
    books_output.add_new_book("where's_wally?")
    result = books_output.get_book_by_title("where's_wally?")
    assert_equal(result[:title], "where's_wally?")
  end

  def test_change_rental_details
    books_output = Library.new(@books)
    books_output.change_rental_details("catcher_in_the_rye", "Neville", "26/11/2018")
    result = books_output.get_book_by_title("catcher_in_the_rye")
    assert_equal(result[:rental_details], {:student_name=>"Neville", :date=>"26/11/2018"})
  end
end
