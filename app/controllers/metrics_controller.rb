class MetricsController < ApplicationController
  before_action :set_metric, only: [:show, :edit, :update, :destroy]

  # GET /metrics
  # GET /metrics.json
  def index
    metrics = Metric.all
    @metrics = metrics.paginate(:page => params[:page], :per_page => 5)

    respond_to do |format|
      format.html
      format.csv { send_data @metrics.to_csv }
    end
  end

  # GET /metrics/1
  # GET /metrics/1.json
  def show
    @metric = Metric.friendly.find(params[:id])
    @categories = @metric.csf_categories
    @metric_values = MetricValue.where("metric_id" => @metric.id).order(:effective_date)
    @metric_value = MetricValue.new
    @mat_level = MaturityLevel.where("metric_id" =>@metric.id)
  end

  # GET /metrics/new
  def new
    @metric = Metric.new
  end

  def download_xlsx
      @metrics = Metric.all
      respond_to do |format| 
         format.xlsx {render xlsx: 'download',filename: "metrics.xlsx", layout: false}
      end
  end  

  # GET /metrics/1/edit
  def edit
  end

  # POST /metrics
  # POST /metrics.json
  def create
    @metric = Metric.new(metric_params)

    respond_to do |format|
      if @metric.save
        format.html { redirect_to @metric, notice: 'Metric was successfully created.' }
        format.json { render :show, status: :created, location: @metric }
      else
        format.html { render :new }
        format.json { render json: @metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metrics/1
  # PATCH/PUT /metrics/1.json
  def update
    @metric = Metric.friendly.find(params[:id])    
    respond_to do |format|
      if @metric.update(metric_params)
        format.html { redirect_to @metric, notice: 'Metric was successfully updated.' }
        format.json { respond_with_bip(@metric) }
      else
        format.html { render :edit }
        format.json { render json: @metric.errors, status: :unprocessable_entity }
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
    def set_metric
      @metric = Metric.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_params
      params.require(:metric).permit!
    end
end
