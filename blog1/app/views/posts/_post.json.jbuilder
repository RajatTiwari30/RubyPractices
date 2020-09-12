json.extract! post, :id, :Title, :Body, :Published, :created_at, :updated_at
json.url post_url(post, format: :json)
