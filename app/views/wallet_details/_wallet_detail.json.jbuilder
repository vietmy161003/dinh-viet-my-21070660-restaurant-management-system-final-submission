json.extract! wallet_detail, :id, :wallet_id, :number, :balance, :created_at, :updated_at
json.url wallet_detail_url(wallet_detail, format: :json)
