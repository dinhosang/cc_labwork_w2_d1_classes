require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class')

class TestLibrary < MiniTest::Test

  def setup
    @the_library = Library.new()
  end


# Create a method that list all the books and their corresponding details.
  def test_list_books
    current_books = [
      {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/17"
                      }
      },
      {
      title: "count_of_monte_cristo",
      rental_details: {
       student_name: "Lea",
       date: "16/12/17"
                      }
      },
      {
      title: "puzzler's_dilemma",
      rental_details: {
       student_name: "Roarke",
       date: "13/01/18"
                      }
      }
    ]
    assert_equal(current_books, @the_library.books)
  end


# Create a method that takes in a book title and returns all of the information about that book.
  def test_book_look_up__found
    book_title = "Count_of_Monte_Cristo"
    book_details = {
    title: "count_of_monte_cristo",
    rental_details: {
     student_name: "Lea",
     date: "16/12/17"
                    }
    }
    assert_equal(book_details, @the_library.book_look_up(book_title))
  end

  def test_book_look_up__not_found
    book_title = "chicago_blues"
    result = false
    assert_equal(false, @the_library.book_look_up(book_title))
  end


end



# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
