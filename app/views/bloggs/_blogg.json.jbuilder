json.extract! blogg, :id, :title, :body, :created_at, :updated_at
json.url blogg_url(blogg, format: :json)
