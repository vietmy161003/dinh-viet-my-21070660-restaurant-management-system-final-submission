json.extract! ticket, :id, :poster_id, :subject, :description, :status, :type, :date, :deleted, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
