class SystemCenterImportsController < ApplicationController

  def import

  	filename = Dir.glob("./external_data/import/*").max_by {|f| File.mtime(f)}
  	object_hash = Hash.from_xml(File.read(filename))
  	detail = object_hash['Report']['Table0']['Detail_Collection']['Detail']

  	category = detail["Details_Table0_Categories"]
    targeted_count = detail["Details_Table0_CountTargeted"]
    failed_count = detail["Details_Table0_FailureCount"]
    unknown_count = detail["Details_Table0_CountNotReporting"]
    non_compliant_count = detail["Details_Table0_CountNoncompliant"]
    compliant_count = detail["Details_Table0_CountCompliant"]
    collection_name = detail["CollectionName"]
    configuration_baseline_revision = detail["Details_Table0_BaselineContentVersion"]
    configuration_baseline_name = detail["Details_Table0_BaselineName"]
    compliance_percentage = detail["CompliancePercentage"]

      SystemCenterImport.create("report_id" => 2,"category" => category, "targeted_count" => targeted_count, "failed_count" => failed_count, 
        "unknown_count" => unknown_count, "non_compliant_count" => non_compliant_count, "compliant_count" => compliant_count,
        "collection_name" => collection_name, "compliance_percentage" => compliance_percentage, "configuration_baseline_revision" => configuration_baseline_revision,
        "configuration_baseline_name" => configuration_baseline_name)

    redirect_to system_center_imports_path

  end

  def import_2

    filename = Dir.glob("./external_data/import_2/*").max_by {|f| File.mtime(f)}
    object_hash = Hash.from_xml(File.read(filename))
    details = object_hash['Report']['Tablix2']['Details_Collection']['Details']

    hash1 = details.map{|x| x['Duration1']}

    hash2 = hash1.map{|n| eval n}

    avg = hash2.inject(0.0) { |sum, el| sum + el } / hash2.size
    
      SystemCenterImport.create("report_id" => 1, "average_patch_duration_days" => avg)

    redirect_to system_center_imports_path

    
  end  

  def index

    @imports = SystemCenterImport.where("report_id" => 2).order(:created_at).reverse_order
    @imports_2 = SystemCenterImport.where("report_id" => 1).order(:created_at).reverse_order
    @report_1 = Report.find(1)
    @report_2 = Report.find(2)

  end

  def new
    @system_center_import = SystemCenterImport.new
  end

  private

    def system_center_import_params
      params.require(:system_center).permit!
    end
end

