class MetricStepsController < ApplicationController
  before_action :set_metric, only: [:show, :edit, :update, :destroy]

	include Wicked::Wizard
  	steps :name, :source, :owner

  	def show
  		@metric = Metric.find(session[:metric_id])
  		render_wizard
  	end

  	def update
  		@metric = Metric.find(session[:metric_id])
  		@metric.update(metric_step_params)
  		render_wizard @metric
  	end

	private  	

		def redirect_to_finish_wizard
			@metric = Metric.find(session[:metric_id])
			redirect_to metric_path(@metric.id)
		end

	    def metric_step_params
	      params.require(:metric).permit!
	    end  	

	    def set_metric
          @metric = Metric.friendly.find(session[:metric_id])
    	end

end
