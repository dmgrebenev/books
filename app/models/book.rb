class Book < ActiveRecord::Base
  belongs_to :author

# scope :new_ones, -> {where("created_at > ?", '2018-11-25 00:00:00')}
  scope :last_updated, -> {order(updated_at: :desc).first}

#Метод экземпляра
  def count_book_of_author
    self.author.books.count
  end

#Метод класса
  # def self.count_books
  #   puts count
  # end
  #
  def self.new_ones date
      self.where("created_at > ?", date)
  end

end
