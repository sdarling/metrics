require 'test_helper'

class SepMetricsControllerTest < ActionController::TestCase
  setup do
    @sep_metric = sep_metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sep_metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sep_metric" do
    assert_difference('SepMetric.count') do
      post :create, sep_metric: {  }
    end

    assert_redirected_to sep_metric_path(assigns(:sep_metric))
  end

  test "should show sep_metric" do
    get :show, id: @sep_metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sep_metric
    assert_response :success
  end

  test "should update sep_metric" do
    patch :update, id: @sep_metric, sep_metric: {  }
    assert_redirected_to sep_metric_path(assigns(:sep_metric))
  end

  test "should destroy sep_metric" do
    assert_difference('SepMetric.count', -1) do
      delete :destroy, id: @sep_metric
    end

    assert_redirected_to sep_metrics_path
  end
end
