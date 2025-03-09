json.extract! book, :id, :title, :isbn, :publisher, :pub_date, :cover, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
