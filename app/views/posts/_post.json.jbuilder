json.extract! post, :id, :title, :truncated_preview, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
