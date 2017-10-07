json.extract! post, :id, :name, :birthday, :surname, :created_at, :updated_at
json.url post_url(post, format: :json)
