json.extract! ticket_detail, :id, :ticket_id, :cus_id, :description, :date, :created_at, :updated_at
json.url ticket_detail_url(ticket_detail, format: :json)
