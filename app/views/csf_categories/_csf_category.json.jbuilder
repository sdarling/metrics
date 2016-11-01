json.extract! csf_category, :id, :csf_function_id, :name, :description, :abbreviation, :created_at, :updated_at
json.url csf_category_url(csf_category, format: :json)