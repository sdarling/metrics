class DashboardsController < ApplicationController
      before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

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
        @metrics = Metric.active.order(:csf_function_id).all
        @identify_score = Score.where("csf_function_id" => 1)
        @protect_score = Score.where("csf_function_id" => 2)
        @detect_score = Score.where("csf_function_id" => 3)
        @respond_score = Score.where("csf_function_id" => 4)
        @recover_score = Score.where("csf_function_id" => 5)
    end

    private

    def set_dashboard
    end

end
