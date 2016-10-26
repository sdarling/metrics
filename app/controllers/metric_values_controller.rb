class MetricValuesController < ApplicationController
  before_action :set_metric_values, only: [:show, :edit, :update, :destroy]

  # GET /metrics
  # GET /metrics.json
  def index
    @metric_values = MetricValues.all
  end

  # GET /metrics/1
  # GET /metrics/1.json
  def show
  end

  # GET /metrics/new
  def new
    @metric_value = Metric.new
  end

  # GET /metrics/1/edit
  def edit
  end

  # POST /metrics
  # POST /metrics.json
  def create
    @metric = Metric.find(params[:metric_id])
    @metric_value = MetricValue.new(metric_value_params)

    respond_to do |format|
      if @metric_value.save
        format.html { redirect_to @metric, notice: 'Metric was successfully created.' }
        format.json { render :show, status: :created, location: @metric_value }
      else
        format.html { render :new }
        format.json { render json: @metric_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metrics/1
  # PATCH/PUT /metrics/1.json
  def update
    @metric_value = MetricValue.find(params[:id])
    respond_to do |format|
      if @metric_value.update(metric_value_params)
        format.html { redirect_to @metric, notice: 'Metric was successfully updated.' }
        format.json { respond_with_bip(@metric_value) }
      else
        format.html { render :edit }
        format.json { render json: @metric_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metrics/1
  # DELETE /metrics/1.json
  def destroy
    @metric.destroy
    respond_to do |format|
      format.html { redirect_to metrics_url, notice: 'Metric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metric_values
      @metric = MetricValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_value_params
      params.require(:metric_value).permit!
    end
end
