json.extract! author, :id, :last_name, :first_name, :birth_date, :country, :about, :gender, :created_at, :updated_at
json.url author_url(author, format: :json)
