json.extract! order, :id, :customer_id, :address, :description, :date, :payment_type, :total, :status, :deleted, :created_at, :updated_at
json.url order_url(order, format: :json)
