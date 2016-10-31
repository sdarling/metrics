json.extract! report, :id, :source_id, :name, :description, :created_at, :updated_at
json.url report_url(report, format: :json)