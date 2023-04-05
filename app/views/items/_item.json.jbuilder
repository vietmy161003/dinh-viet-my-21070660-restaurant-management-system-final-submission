json.extract! item, :id, :name, :price, :deleted, :created_at, :updated_at
json.url item_url(item, format: :json)
