json.extract! voyage_history, :id, :departure_port, :departure_time, :entry_port, :entering_port_time, :naccs_code, :owner_id, :created_at, :updated_at
json.url voyage_history_url(voyage_history, format: :json)
