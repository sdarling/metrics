json.extract! sccm_metric, :id, :name, :description, :value, :created_at, :updated_at
json.url sccm_metric_url(sccm_metric, format: :json)