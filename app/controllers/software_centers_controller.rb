class SoftwareCentersController < InheritedResources::Base

  def import
  	require 'nokogiri'
	require 'open-uri'

	filename = 'sccm_sample.xml'

	object_hash = Hash.from_xml(File.read(filename))

	new_hash = object_hash['Report']['Table0']['Detail_Collection']['Detail']

	@show_this = new_hash["CompliancePercentage"]
	


  end

  private

    def software_center_params
      params.require(:software_center).permit(:category, :targeter, :failed, :unknown, :non_compliant, :compliant, :collection_name, :compliance_percentage, :target_compliant_percentage, :configuration_baseline_revision, :conviguration_baseline_name)
    end
end

