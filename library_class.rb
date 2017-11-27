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


  def rental_details(title)
    book_details = book_look_up(title)
    if book_details
      rental_info = book_details[:rental_details]
      return rental_info
    end
    return false
  end


  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  
end
