require 'test_helper'

class CsfCategoriesControllerTest < ActionController::TestCase
  setup do
    @csf_category = csf_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csf_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csf_category" do
    assert_difference('CsfCategory.count') do
      post :create, csf_category: { abbreviation: @csf_category.abbreviation, csf_function_id: @csf_category.csf_function_id, description: @csf_category.description, name: @csf_category.name }
    end

    assert_redirected_to csf_category_path(assigns(:csf_category))
  end

  test "should show csf_category" do
    get :show, id: @csf_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @csf_category
    assert_response :success
  end

  test "should update csf_category" do
    patch :update, id: @csf_category, csf_category: { abbreviation: @csf_category.abbreviation, csf_function_id: @csf_category.csf_function_id, description: @csf_category.description, name: @csf_category.name }
    assert_redirected_to csf_category_path(assigns(:csf_category))
  end

  test "should destroy csf_category" do
    assert_difference('CsfCategory.count', -1) do
      delete :destroy, id: @csf_category
    end

    assert_redirected_to csf_categories_path
  end
end
