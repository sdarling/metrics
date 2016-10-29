class SoftwareCenterImportsController < ApplicationController

  def import

  	filename = 'sccm_sample.xml'
  	object_hash = Hash.from_xml(File.read(filename))
  	new_hash = object_hash['Report']['Table0']['Detail_Collection']['Detail']

  	@show_this = new_hash["CompliancePercentage"]


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

