class SoftwareCentersController < InheritedResources::Base

  def import
  	require 'nokogiri'
	require 'open-uri'

	filename = 'sccm_sample.xml'

	require 'nokogiri'

	doc = Nokogiri::XML(File.open("sccm_sample.xml"))
	details = doc.xpath("//Detail_Collection")

	hashed = Hash.from_xml(details.to_s)

	@show_this = hashed 

	


  end

  private

    def software_center_params
      params.require(:software_center).permit(:category, :targeter, :failed, :unknown, :non_compliant, :compliant, :collection_name, :compliance_percentage, :target_compliant_percentage, :configuration_baseline_revision, :conviguration_baseline_name)
    end
end

