json.extract! book, :id, :title, :description, :publish_date, :language, :isbn, :pages, :price, :publisher_id, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
