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
end

  def test_get_books
    books_output = Library.new(@books)
    p books_output
  end








end
