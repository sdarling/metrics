User.create("email" => 'stephen_darling@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("email" => 'peter_caulum@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("email" => 'brian_gay@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("email" => 'ryan_tappis@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("email" => 'sean_owen@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("email" => 'jose_frometaguerra@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')

CsfFunction.create("id" => 1, "name" => "Identify", "avg_maturity_level" => 0)
CsfFunction.create("id" => 2, "name" => "Protect", "avg_maturity_level" => 0)
CsfFunction.create("id" => 3, "name" => "Detect", "avg_maturity_level" => 0)
CsfFunction.create("id" => 4, "name" => "Respond", "avg_maturity_level" => 0)
CsfFunction.create("id" => 5, "name" => "Recover", "avg_maturity_level" => 0)

Unit.create("id" => 1, "name" => "Percent")
Unit.create("id" => 2, "name" => "Hours")
Unit.create("id" => 3, "name" => "Number")

Metric.create("name" => "Access Control", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "AV/Malware Protection", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Configuration Baseline","csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Cyber Resource Recovery", "csf_function_id" => 5, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Data Security", "csf_function_id" => 1, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Incident Containment", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Incident Detection", "csf_function_id" => 3, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Incident Response", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Mobile Device Mgmt.", "csf_function_id" => 1, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Mobile Device Security", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Penetration Testing", "csf_function_id" => 3, "unit_id" => 3, "recent_maturity_level" => 0)
Metric.create("name" => "Policy Compliance", "csf_function_id" => 3, "unit_id" => 3, "recent_maturity_level" => 0)
Metric.create("name" => "Policy Violation Reporting", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Recovery Time Objectives", "csf_function_id" => 5, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Regulatory Compliance", "csf_function_id" => 1, "unit_id" => 3, "recent_maturity_level" => 0)
Metric.create("name" => "Risk Mitigation", "csf_function_id" => 3, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "Risk Register", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Subcontractor Security", "csf_function_id" => 1, "unit_id" => 1, "recent_maturity_level" => 0)
Metric.create("name" => "System Patching", "csf_function_id" => 2, "unit_id" => 2, "recent_maturity_level" => 0)
Metric.create("name" => "Training and Awareness", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0)

@metric = Metric.all 
@metric.each do |i|

	MaturityLevel.create("metric_id" => i.id, "weighted_value" => "0", "low" => "0", "high" => "0")
	MaturityLevel.create("metric_id" => i.id, "weighted_value" => "1", "low" => "1", "high" => "10")
	MaturityLevel.create("metric_id" => i.id, "weighted_value" => "2", "low" => "11", "high" => "40")
	MaturityLevel.create("metric_id" => i.id, "weighted_value" => "3", "low" => "41", "high" => "90")
	MaturityLevel.create("metric_id" => i.id, "weighted_value" => "4", "low" => "91", "high" => "100")

	MetricValue.create("metric_id" => i.id, "value" => "10", "effective_date" => "2016-1-1")
	MetricValue.create("metric_id" => i.id, "value" => "20", "effective_date" => "2016-2-1")
	MetricValue.create("metric_id" => i.id, "value" => "30", "effective_date" => "2016-3-1")

end

@value = MetricValue.all
@value.each do |v|
	zero = MaturityLevel.where("metric_id" => v.metric_id).first	
	one = MaturityLevel.where("metric_id" => v.metric_id).second
	two = MaturityLevel.where("metric_id" => v.metric_id).third
	three = MaturityLevel.where("metric_id" => v.metric_id).fourth
	four = MaturityLevel.where("metric_id" => v.metric_id).fifth
	
	if v.value.between?(zero.low,zero.high)
		v.update("maturity_level" => zero.weighted_value)
	elsif v.value.between?(one.low,one.high)
		v.update("maturity_level" => one.weighted_value)
	elsif v.value.between?(two.low,two.high)
		v.update("maturity_level" => two.weighted_value)
	elsif v.value.between?(three.low,three.high)
		v.update("maturity_level" => three.weighted_value)
	elsif v.value.between?(four.low,four.high)
		v.update("maturity_level" => four.weighted_value)
	end
end

