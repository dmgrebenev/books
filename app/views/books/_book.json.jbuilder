json.extract! book, :id, :title, :description, :isbn, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
