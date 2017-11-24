json.extract! defected_item, :id, :company, :full_name, :description, :status, :total, :created_at, :updated_at
json.url defected_item_url(defected_item, format: :json)
