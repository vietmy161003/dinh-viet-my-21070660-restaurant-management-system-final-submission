json.extract! coupon, :id, :subject, :description, :status, :type, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
