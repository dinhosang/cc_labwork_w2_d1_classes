class Library

  attr_reader :books

  def initialize

    @books = [
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
  end


  def book_look_up(sought_title)
    for book in @books
      return book if book[:title] == sought_title.downcase
    end
    return false
  end


end
