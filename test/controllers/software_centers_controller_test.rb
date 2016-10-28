require 'test_helper'

class SoftwareCentersControllerTest < ActionController::TestCase
  setup do
    @software_center = software_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_center" do
    assert_difference('SoftwareCenter.count') do
      post :create, software_center: { category: @software_center.category, collection_name: @software_center.collection_name, compliance_percentage: @software_center.compliance_percentage, compliant: @software_center.compliant, configuration_baseline_revision: @software_center.configuration_baseline_revision, conviguration_baseline_name: @software_center.conviguration_baseline_name, failed: @software_center.failed, non_compliant: @software_center.non_compliant, target_compliant_percentage: @software_center.target_compliant_percentage, targeter: @software_center.targeter, unknown: @software_center.unknown }
    end

    assert_redirected_to software_center_path(assigns(:software_center))
  end

  test "should show software_center" do
    get :show, id: @software_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software_center
    assert_response :success
  end

  test "should update software_center" do
    patch :update, id: @software_center, software_center: { category: @software_center.category, collection_name: @software_center.collection_name, compliance_percentage: @software_center.compliance_percentage, compliant: @software_center.compliant, configuration_baseline_revision: @software_center.configuration_baseline_revision, conviguration_baseline_name: @software_center.conviguration_baseline_name, failed: @software_center.failed, non_compliant: @software_center.non_compliant, target_compliant_percentage: @software_center.target_compliant_percentage, targeter: @software_center.targeter, unknown: @software_center.unknown }
    assert_redirected_to software_center_path(assigns(:software_center))
  end

  test "should destroy software_center" do
    assert_difference('SoftwareCenter.count', -1) do
      delete :destroy, id: @software_center
    end

    assert_redirected_to software_centers_path
  end
end
