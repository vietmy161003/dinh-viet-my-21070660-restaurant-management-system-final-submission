json.extract! e_wallet, :id, :customer, :customer_name, :balance, :created_at, :updated_at
json.url e_wallet_url(e_wallet, format: :json)
