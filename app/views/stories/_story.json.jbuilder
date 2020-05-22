json.extract! story, :id, :post_id, :novel_id, :subtitle, :content, :created, :updated, :parent, :created_at, :updated_at
json.url story_url(story, format: :json)
