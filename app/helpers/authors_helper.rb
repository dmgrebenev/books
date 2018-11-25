module AuthorsHelper

  def books_header_title
      #Listing Books (<%= @author ? @author.name : "" %>):
      # "Listing Books (#{@author ? @author.name : ""})"
      @author ? raw("Книги автора: #{@author ? link_to(@author.name, @author) : ""}:") : "Список книг:"
  end

end
