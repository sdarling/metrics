json.extract! software_center, :id, :category, :targeter, :failed, :unknown, :non_compliant, :compliant, :collection_name, :compliance_percentage, :target_compliant_percentage, :configuration_baseline_revision, :conviguration_baseline_name, :created_at, :updated_at
json.url software_center_url(software_center, format: :json)