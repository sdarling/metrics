class SoftwareCenterImportsController < ApplicationController

  def import

  	filename = 'sccm_sample.xml'
  	object_hash = Hash.from_xml(File.read(filename))
  	detail = object_hash['Report']['Table0']['Detail_Collection']['Detail']

  	category = detail["Details_Table0_Categoriesdex3"]
    targeted_count = detail["Details_Table0_CountTargeted"]
    failed_count = detail["Details_Table0_FailureCount"]
    unknown_count = detail["Details_Table0_CountNotReporting"]
    non_compliant_count = detail["Details_Table0_CountNoncompliant"]
    compliant_count = detail["Details_Table0_CountCompliant"]
    collection_name = detail["CollectionName"]
    configuration_baseline_revision = detail["Details_Table0_BaselineContentVersion"]
    configuration_baseline_name = detail["Details_Table0_BaselineName"]
    compliance_percentage = detail["CompliancePercentage"]

      SoftwareCenterImport.create()

    redirect_to software_center_imports_path

  end

  def index

    @imports = SoftwareCenterImport.all

  end

  def new
    @software_center_import = SoftwareCenterImport.new
  end

  private

    def software_center_import_params
      params.require(:software_center).permit!
    end
end

