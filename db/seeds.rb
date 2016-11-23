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

Period.create("year" => "2015", "fy_year" => "2014", "month" => 1, "month_name" => "January", "month_short_name" => "Jan", "quarter" => 1, "fy_quarter" => 4, "start_date" => "1/1/2015", "end_date" => "1/31/2015")
Period.create("year" => "2015", "fy_year" => "2014", "month" => 2, "month_name" => "February", "month_short_name" => "Feb", "quarter" => 1, "fy_quarter" => 4, "start_date" => "2/1/2015", "end_date" = "2/28/2015")
Period.create("year" => "2015", "fy_year" => "2014", "month" => 3, "month_name" => "March", "month_short_name" => "Mar", "quarter" => 1, "fy_quarter" => 4, "start_date" => "3/1/2015", "end_date" => "3/31/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 4, "month_name" => "April", "month_short_name" => "Apr", "quarter" => 2, "fy_quarter" => 1, "start_date" => "4/1/2015", "end_date" => "4/30/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 5, "month_name" => "May", "month_short_name" => "May", "quarter" => 2, "fy_quarter" => 1, "start_date" => "5/1/2015", "end_date" => "5/31/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 6, "month_name" => "June", "month_short_name" => "Jun", "quarter" => 2, "fy_quarter" => 1, "start_date" => "6/1/2015", "end_date" => "6/30/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 7, "month_name" => "July", "month_short_name" => "Jul", "quarter" => 3, "fy_quarter" => 2, "start_date" => "7/1/2015", "end_date" => "7/31/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 8, "month_name" => "August", "month_short_name" => "Aug", "quarter" => 3, "fy_quarter" => 2, "start_date" => "8/1/2015", "end_date" => "8/31/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 9, "month_name" => "September", "month_short_name" => "Sep", "quarter" => 3, "fy_quarter" => 2, "start_date" => "9/1/2015", "end_date" => "9/30/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 10, "month_name" => "October", "month_short_name" => "Oct", "quarter" => 4, "fy_quarter" => 3, "start_date" => "10/1/2015", "end_date" => "10/31/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 11, "month_name" => "November", "month_short_name" => "Nov", "quarter" => 4, "fy_quarter" 3, "start_date" => "11/1/2015", "end_date" => "11/30/2015")
Period.create("year" => "2015", "fy_year" => "2015", "month" => 12, "month_name" => "December", "month_short_name" => "Dec", "quarter" => 4, "fy_quarter" => 3, "start_date" => "12/1/2015", "end_date" => "12/31/2015")

Period.create("year" => "2016", "fy_year" => "2015", "month" => 1, "month_name" => "January", "month_short_name" => "Jan", "quarter" => 1, "fy_quarter" => 4, "start_date" => "1/1/2016", "end_date" => "1/31/2016")
Period.create("year" => "2016", "fy_year" => "2015", "month" => 2, "month_name" => "February", "month_short_name" => "Feb", "quarter" => 1, "fy_quarter" => 4, "start_date" => "2/1/2016", "end_date" = "2/29/2016")
Period.create("year" => "2016", "fy_year" => "2015", "month" => 3, "month_name" => "March", "month_short_name" => "Mar", "quarter" => 1, "fy_quarter" => 4, "start_date" => "3/1/2016", "end_date" => "3/31/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 4, "month_name" => "April", "month_short_name" => "Apr", "quarter" => 2, "fy_quarter" => 1, "start_date" => "4/1/2016", "end_date" => "4/30/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 5, "month_name" => "May", "month_short_name" => "May", "quarter" => 2, "fy_quarter" => 1, "start_date" => "5/1/2016", "end_date" => "5/31/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 6, "month_name" => "June", "month_short_name" => "Jun", "quarter" => 2, "fy_quarter" => 1, "start_date" => "6/1/2016", "end_date" => "6/30/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 7, "month_name" => "July", "month_short_name" => "Jul", "quarter" => 3, "fy_quarter" => 2, "start_date" => "7/1/2016", "end_date" => "7/31/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 8, "month_name" => "August", "month_short_name" => "Aug", "quarter" => 3, "fy_quarter" => 2, "start_date" => "8/1/2016", "end_date" => "8/31/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 9, "month_name" => "September", "month_short_name" => "Sep", "quarter" => 3, "fy_quarter" => 2, "start_date" => "9/1/2016", "end_date" => "9/30/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 10, "month_name" => "October", "month_short_name" => "Oct", "quarter" => 4, "fy_quarter" => 3, "start_date" => "10/1/2016", "end_date" => "10/31/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 11, "month_name" => "November", "month_short_name" => "Nov", "quarter" => 4, "fy_quarter" 3, "start_date" => "11/1/2016", "end_date" => "11/30/2016")
Period.create("year" => "2016", "fy_year" => "2016", "month" => 12, "month_name" => "December", "month_short_name" => "Dec", "quarter" => 4, "fy_quarter" => 3, "start_date" => "12/1/2016", "end_date" => "12/31/2016")

Period.create("year" => "2017", "fy_year" => "2016", "month" => 1, "month_name" => "January", "month_short_name" => "Jan", "quarter" => 1, "fy_quarter" => 4, "start_date" => "1/1/2017", "end_date" => "1/31/2017")
Period.create("year" => "2017", "fy_year" => "2016", "month" => 2, "month_name" => "February", "month_short_name" => "Feb", "quarter" => 1, "fy_quarter" => 4, "start_date" => "2/1/2017", "end_date" = "2/29/2017")
Period.create("year" => "2017", "fy_year" => "2016", "month" => 3, "month_name" => "March", "month_short_name" => "Mar", "quarter" => 1, "fy_quarter" => 4, "start_date" => "3/1/2017", "end_date" => "3/31/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 4, "month_name" => "April", "month_short_name" => "Apr", "quarter" => 2, "fy_quarter" => 1, "start_date" => "4/1/2017", "end_date" => "4/30/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 5, "month_name" => "May", "month_short_name" => "May", "quarter" => 2, "fy_quarter" => 1, "start_date" => "5/1/2017", "end_date" => "5/31/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 6, "month_name" => "June", "month_short_name" => "Jun", "quarter" => 2, "fy_quarter" => 1, "start_date" => "6/1/2017", "end_date" => "6/30/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 7, "month_name" => "July", "month_short_name" => "Jul", "quarter" => 3, "fy_quarter" => 2, "start_date" => "7/1/2017", "end_date" => "7/31/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 8, "month_name" => "August", "month_short_name" => "Aug", "quarter" => 3, "fy_quarter" => 2, "start_date" => "8/1/2017", "end_date" => "8/31/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 9, "month_name" => "September", "month_short_name" => "Sep", "quarter" => 3, "fy_quarter" => 2, "start_date" => "9/1/2017", "end_date" => "9/30/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 10, "month_name" => "October", "month_short_name" => "Oct", "quarter" => 4, "fy_quarter" => 3, "start_date" => "10/1/2017", "end_date" => "10/31/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 11, "month_name" => "November", "month_short_name" => "Nov", "quarter" => 4, "fy_quarter" 3, "start_date" => "11/1/2017", "end_date" => "11/30/2017")
Period.create("year" => "2017", "fy_year" => "2017", "month" => 12, "month_name" => "December", "month_short_name" => "Dec", "quarter" => 4, "fy_quarter" => 3, "start_date" => "12/1/2017", "end_date" => "12/31/2017")

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