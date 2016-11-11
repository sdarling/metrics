require 'test_helper'

class SccmMetricsControllerTest < ActionController::TestCase
  setup do
    @sccm_metric = sccm_metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sccm_metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sccm_metric" do
    assert_difference('SccmMetric.count') do
      post :create, sccm_metric: { description: @sccm_metric.description, name: @sccm_metric.name, value: @sccm_metric.value }
    end

    assert_redirected_to sccm_metric_path(assigns(:sccm_metric))
  end

  test "should show sccm_metric" do
    get :show, id: @sccm_metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sccm_metric
    assert_response :success
  end

  test "should update sccm_metric" do
    patch :update, id: @sccm_metric, sccm_metric: { description: @sccm_metric.description, name: @sccm_metric.name, value: @sccm_metric.value }
    assert_redirected_to sccm_metric_path(assigns(:sccm_metric))
  end

  test "should destroy sccm_metric" do
    assert_difference('SccmMetric.count', -1) do
      delete :destroy, id: @sccm_metric
    end

    assert_redirected_to sccm_metrics_path
  end
end
