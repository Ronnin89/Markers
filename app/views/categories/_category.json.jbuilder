json.extract! category, :id, :name, :private, :categories_id, :created_at, :updated_at
json.url category_url(category, format: :json)
