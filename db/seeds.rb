User.create("firstname" => "Steve", "lastname" => "Darling", "email" => 'stephen_darling@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word', "superadmin" => true)
User.create("firstname" => "Peter", "lastname" => "Caulum", "email" => 'peter_caulum@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("firstname" => "Brian", "lastname" => "Gay", "email" => 'brian_gay@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("firstname" => "Ryan", "lastname" => "Tappis", "email" => 'ryan_tappis@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')
User.create("firstname" => "Sean", "lastname" => "Owen", "email" => 'sean_owen@abtassoc.com', "password" => 'Pa$$word', "password_confirmation" => 'Pa$$word')

CsfFunction.create("id" => 1, "name" => "Identify", "avg_maturity_level" => 0, "goal_question" => "How effectively are we identifying cybersecurity risks that may impact the organization?")
CsfFunction.create("id" => 2, "name" => "Protect", "avg_maturity_level" => 0, "goal_question" => "How effective is our ability to develop and implement the appropriate safeguards to ensure delivery of critical infrastructure services?")
CsfFunction.create("id" => 3, "name" => "Detect", "avg_maturity_level" => 0, "goal_question" => "How effective is our ability to develop and implement activities to identify the occurence of a cybersecurity event?")
CsfFunction.create("id" => 4, "name" => "Respond", "avg_maturity_level" => 0, "goal_question" => "How effective is our ability to contain the impact of a potential cybersecurity event?")
CsfFunction.create("id" => 5, "name" => "Recover", "avg_maturity_level" => 0, "goal_question" => "How effective is our ability to timely recover to normal operations to reduce impact from a cybersecurity event?")

CsfCategory.create("id" => 1, "csf_function_id" => 1, "name" => "Business Environment", "abbreviation" => "ID.BE")
CsfCategory.create("id" => 2, "csf_function_id" => 1, "name" => "Governance", "abbreviation" => "ID.GV")
CsfCategory.create("id" => 3, "csf_function_id" => 1, "name" => "Assessment Management", "abbreviation" => "ID.AM")
CsfCategory.create("id" => 4, "csf_function_id" => 2, "name" => "Awareness & Training", "abbreviation" => "PR.AT")
CsfCategory.create("id" => 5, "csf_function_id" => 2, "name" => "Information Protection", "abbreviation" => "PR.IP")
CsfCategory.create("id" => 6, "csf_function_id" => 2, "name" => "Protective Technology", "abbreviation" => "PR.PT")
CsfCategory.create("id" => 7, "csf_function_id" => 3, "name" => "Continuous Monitoring", "abbreviation" => "DE.CM")
CsfCategory.create("id" => 8, "csf_function_id" => 1, "name" => "Risk Assessment", "abbreviation" => "ID.RA")
CsfCategory.create("id" => 9, "csf_function_id" => 2, "name" => "Maintenance", "abbreviation" => "PR.MA")
CsfCategory.create("id" => 10, "csf_function_id" => 4, "name" => "Mitigation", "abbreviation" => "RS.MI")
CsfCategory.create("id" => 11, "csf_function_id" => 2, "name" => "Data Security", "abbreviation" => "PR.DS")
CsfCategory.create("id" => 12, "csf_function_id" => 2, "name" => "Access Control", "abbreviation" => "PR.AC")
CsfCategory.create("id" => 13, "csf_function_id" => 3, "name" => "Detection Processes", "abbreviation" => "DE.RP")
CsfCategory.create("id" => 14, "csf_function_id" => 3, "name" => "Anomalies & Events", "abbreviation" => "DE.AE")
CsfCategory.create("id" => 15, "csf_function_id" => 4, "name" => "Analysis", "abbreviation" => "RS.AN")
CsfCategory.create("id" => 16, "csf_function_id" => 1, "name" => "Risk Management Strategy", "abbreviation" => "ID.RM")
CsfCategory.create("id" => 17, "csf_function_id" => 4, "name" => "Response Planning", "abbreviation" => "RS.RP")
CsfCategory.create("id" => 18, "csf_function_id" => 4, "name" => "Communications", "abbreviation" => "RS.CO")
CsfCategory.create("id" => 19, "csf_function_id" => 4, "name" => "Improvements", "abbreviation" => "RS.IM")
CsfCategory.create("id" => 20, "csf_function_id" => 5, "name" => "Recovery Planning", "abbreviation" => "RC.RP")
CsfCategory.create("id" => 21, "csf_function_id" => 5, "name" => "Improvements", "abbreviation" => "RC.IM")
CsfCategory.create("id" => 22, "csf_function_id" => 5, "name" => "Communications", "abbreviation" => "RC.CO")

Unit.create("id" => 1, "name" => "Percent")
Unit.create("id" => 2, "name" => "Hours")
Unit.create("id" => 3, "name" => "Number")

Metric.create("id" => 1, "name" => "Access Control", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 2, "name" => "AV/Malware Protection", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 3, "name" => "Configuration Baseline","csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 4, "name" => "Cyber Resource Recovery", "csf_function_id" => 5, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 5, "name" => "Data Security", "csf_function_id" => 1, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 6, "name" => "Incident Containment", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 7, "name" => "Incident Detection", "csf_function_id" => 3, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 8, "name" => "Incident Response", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 9, "name" => "Mobile Device Mgmt.", "csf_function_id" => 1, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 10, "name" => "Mobile Device Security", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 11, "name" => "Penetration Testing", "csf_function_id" => 3, "unit_id" => 3, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 12, "name" => "Policy Compliance", "csf_function_id" => 3, "unit_id" => 3, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 13, "name" => "Policy Violation Reporting", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 14, "name" => "Recovery Time Objectives", "csf_function_id" => 5, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 15, "name" => "Regulatory Compliance", "csf_function_id" => 1, "unit_id" => 3, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 16, "name" => "Risk Mitigation", "csf_function_id" => 3, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 17, "name" => "Risk Register", "csf_function_id" => 4, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 18, "name" => "Subcontractor Security", "csf_function_id" => 1, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)
Metric.create("id" => 19, "name" => "System Patching", "csf_function_id" => 2, "unit_id" => 2, "recent_maturity_level" => 0, "target_maturity_level" => 2)
Metric.create("id" => 20, "name" => "Training and Awareness", "csf_function_id" => 2, "unit_id" => 1, "recent_maturity_level" => 0, "target_maturity_level" => 3)

CsfCategoryMetric.create("metric_id" => 1, "csf_category_id" => 12)
CsfCategoryMetric.create("metric_id" => 2, "csf_category_id" => 6)
CsfCategoryMetric.create("metric_id" => 2, "csf_category_id" => 7)
CsfCategoryMetric.create("metric_id" => 3, "csf_category_id" => 5)
CsfCategoryMetric.create("metric_id" => 3, "csf_category_id" => 6)
CsfCategoryMetric.create("metric_id" => 3, "csf_category_id" => 7)
CsfCategoryMetric.create("metric_id" => 4, "csf_category_id" => 5)
CsfCategoryMetric.create("metric_id" => 5, "csf_category_id" => 3)
CsfCategoryMetric.create("metric_id" => 5, "csf_category_id" => 1)
CsfCategoryMetric.create("metric_id" => 6, "csf_category_id" => 14)
CsfCategoryMetric.create("metric_id" => 6, "csf_category_id" => 13)
CsfCategoryMetric.create("metric_id" => 6, "csf_category_id" => 17)
CsfCategoryMetric.create("metric_id" => 7, "csf_category_id" => 14)
CsfCategoryMetric.create("metric_id" => 7, "csf_category_id" => 13)
CsfCategoryMetric.create("metric_id" => 7, "csf_category_id" => 15)
CsfCategoryMetric.create("metric_id" => 8, "csf_category_id" => 18)
CsfCategoryMetric.create("metric_id" => 8, "csf_category_id" => 10)
CsfCategoryMetric.create("metric_id" => 8, "csf_category_id" => 19)
CsfCategoryMetric.create("metric_id" => 9, "csf_category_id" => 3)
CsfCategoryMetric.create("metric_id" => 10, "csf_category_id" => 11)
CsfCategoryMetric.create("metric_id" => 10, "csf_category_id" => 5)
CsfCategoryMetric.create("metric_id" => 11, "csf_category_id" => 8)
CsfCategoryMetric.create("metric_id" => 11, "csf_category_id" => 7)
CsfCategoryMetric.create("metric_id" => 12, "csf_category_id" => 2)
CsfCategoryMetric.create("metric_id" => 12, "csf_category_id" => 13)
CsfCategoryMetric.create("metric_id" => 13, "csf_category_id" => 2)
CsfCategoryMetric.create("metric_id" => 13, "csf_category_id" => 13)
CsfCategoryMetric.create("metric_id" => 13, "csf_category_id" => 18)
CsfCategoryMetric.create("metric_id" => 14, "csf_category_id" => 20)
CsfCategoryMetric.create("metric_id" => 14, "csf_category_id" => 21)
CsfCategoryMetric.create("metric_id" => 14, "csf_category_id" => 22)
CsfCategoryMetric.create("metric_id" => 15, "csf_category_id" => 1)
CsfCategoryMetric.create("metric_id" => 15, "csf_category_id" => 2)
CsfCategoryMetric.create("metric_id" => 16, "csf_category_id" => 8)
CsfCategoryMetric.create("metric_id" => 16, "csf_category_id" => 16)
CsfCategoryMetric.create("metric_id" => 16, "csf_category_id" => 14)
CsfCategoryMetric.create("metric_id" => 16, "csf_category_id" => 7)
CsfCategoryMetric.create("metric_id" => 16, "csf_category_id" => 13)
CsfCategoryMetric.create("metric_id" => 17, "csf_category_id" => 8)
CsfCategoryMetric.create("metric_id" => 17, "csf_category_id" => 10)
CsfCategoryMetric.create("metric_id" => 18, "csf_category_id" => 1)
CsfCategoryMetric.create("metric_id" => 18, "csf_category_id" => 2)
CsfCategoryMetric.create("metric_id" => 19, "csf_category_id" => 8)
CsfCategoryMetric.create("metric_id" => 19, "csf_category_id" => 5)
CsfCategoryMetric.create("metric_id" => 19, "csf_category_id" => 9)
CsfCategoryMetric.create("metric_id" => 19, "csf_category_id" => 7)
CsfCategoryMetric.create("metric_id" => 19, "csf_category_id" => 10)
CsfCategoryMetric.create("metric_id" => 20, "csf_category_id" => 2)
CsfCategoryMetric.create("metric_id" => 20, "csf_category_id" => 4)

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

	Metric.update_all("description" => "SAMPLE DESCRIPTION FOR METRIC")
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

Score.create("effective_date" => "2016-1-1", "actual_value" => "1.5", "target_value" => "2")
Score.create("effective_date" => "2016-2-1", "actual_value" => "1.9", "target_value" => "3")
Score.create("effective_date" => "2016-3-1", "actual_value" => "2.5", "target_value" => "4")
Score.create("effective_date" => "2016-1-1", "actual_value" => "1.5", "target_value" => "2", "csf_function_id" => 1)
Score.create("effective_date" => "2016-1-1", "actual_value" => "1.9", "target_value" => "3", "csf_function_id" => 1)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.5", "target_value" => "3", "csf_function_id" => 1)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.5", "target_value" => "2", "csf_function_id" => 2)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.9", "target_value" => "3", "csf_function_id" => 2)
Score.create("effective_date" => "2016-1-1", "actual_value" => "3.5", "target_value" => "3", "csf_function_id" => 2)
Score.create("effective_date" => "2016-1-1", "actual_value" => "1.7", "target_value" => "2", "csf_function_id" => 3)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.2", "target_value" => "2", "csf_function_id" => 3)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.5", "target_value" => "3", "csf_function_id" => 3)
Score.create("effective_date" => "2016-1-1", "actual_value" => "1", "target_value" => "2", "csf_function_id" => 4)
Score.create("effective_date" => "2016-1-1", "actual_value" => "1.9", "target_value" => "2", "csf_function_id" => 4)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.5", "target_value" => "4", "csf_function_id" => 4)
Score.create("effective_date" => "2016-1-1", "actual_value" => "1.8", "target_value" => "3", "csf_function_id" => 5)
Score.create("effective_date" => "2016-1-1", "actual_value" => "1.9", "target_value" => "3", "csf_function_id" => 5)
Score.create("effective_date" => "2016-1-1", "actual_value" => "2.9", "target_value" => "3", "csf_function_id" => 5)

Source.create("id" => 1, "name" => "System Center Configuration Manager (SCCM)")

Report.create("id" => 1, "name" => "Server Patch Duration Time", "source_id" => 1)
Report.create("id" => 2, "name" => "Symantec Encryption Compliance Percentage", "source_id" => 1)

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end