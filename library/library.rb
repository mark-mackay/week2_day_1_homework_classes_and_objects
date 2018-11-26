class Library
@new_book = {:title=>"1984", :rental_details=>{:student_name=>"Mark", :date=>"23/04/18"}}
def initialize(books)
  @books = books
end

def get_books
  return @books
end

def get_book_by_title(title)
 match = nil
  for book in @books
    match = book if book[:title] == title
  end
  return match
end

def return_rental_details(title)
  book = get_book_by_title(title)
  return book[:rental_details]
end

def add_new_book(title)
  new_book = {:title=>title, :rental_details=>{:student_name=>"", :date=>""}}
  @books << new_book
end

def change_rental_details(title, name, date)
  @books.each { |book| book[:rental_details] = {:student_name => name, :date => date } if book[:title] == title }
end











end
