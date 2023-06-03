json.extract! vessel, :id, :reference_number, :name, :naccs_code, :owner_id, :latest_update_user, :remarks, :created_at, :updated_at
json.url vessel_url(vessel, format: :json)
