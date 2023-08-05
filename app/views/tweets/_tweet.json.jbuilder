json.extract! tweet, :id, :user_name, :description, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
