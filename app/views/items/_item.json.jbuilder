json.extract! item, :id, :name, :unit_price, :special_qty, :special_price, :created_at, :updated_at
json.url item_url(item, format: :json)
