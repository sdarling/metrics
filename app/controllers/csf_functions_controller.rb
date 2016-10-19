class CsfFunctionsController < ApplicationController
  before_action :set_csf_function, only: [:show, :edit, :update, :destroy]

  # GET /metrics
  # GET /metrics.json
  def index
    @csf_functions = CsfFunction.all
    @score = CsfFunction.all.average(:avg_maturity_level)
    @recent_metrics = MetricValue.order(:effective_date).reverse_order.limit(5)
    @identify = CsfFunction.where("id" => 1).first
    @protect = CsfFunction.where("id" => 2).first
    @detect = CsfFunction.where("id" => 3).first
    @respond = CsfFunction.where("id" => 4).first
    @recover = CsfFunction.where("id" => 5).first
    @scores = Score.where("csf_function_id" => nil)
    @metrics = Metric.order(:csf_function_id).all
    @identify_score = Score.where("csf_function_id" => 1)
    @protect_score = Score.where("csf_function_id" => 2)
    @detect_score = Score.where("csf_function_id" => 3)
    @respond_score = Score.where("csf_function_id" => 4)
    @recover_score = Score.where("csf_function_id" => 5)

  end

  # GET /metrics/1
  # GET /metrics/1.json
  def show
    @csf_function = CsfFunction.find(params[:id])
    @metrics = Metric.where("csf_function_id" => params[:id])
  end

  # GET /metrics/new
  def new
    @csf_function = CsfFunction.new
  end

  # GET /metrics/1/edit
  def edit
  end

  # POST /metrics
  # POST /metrics.json

  # PATCH/PUT /metrics/1
  # PATCH/PUT /metrics/1.json

  # DELETE /metrics/1
  # DELETE /metrics/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csf_function
      @csffunction = CsfFunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csf_function_params
      params.require(:csffunction).permit!
    end
end
