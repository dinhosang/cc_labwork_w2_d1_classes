class Library

  attr_reader :books

  def initialize(*books)

    # reminder to self:
    # *books in the parameter means all the entered args
    # are placed into the class in an array
    # this array is then entered straight into @books
    # the * is the splat operator
    @books = books

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
      title: title.downcase,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end


  def rent_book(title, student, date)
    for book in @books
      if book[:title] == title.downcase
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
  end


end
