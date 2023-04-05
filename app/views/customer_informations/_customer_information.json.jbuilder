json.extract! customer_information, :id, :role, :name, :username, :password, :email, :address, :contact, :verified, :deleted, :created_at, :updated_at
json.url customer_information_url(customer_information, format: :json)
