require 'test_helper'

class CellSkedsControllerTest < ActionController::TestCase
  setup do
    @cell_sked = cell_skeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cell_skeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell_sked" do
    assert_difference('CellSked.count') do
      post :create, cell_sked: @cell_sked.attributes
    end

    assert_redirected_to cell_sked_path(assigns(:cell_sked))
  end

  test "should show cell_sked" do
    get :show, id: @cell_sked
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell_sked
    assert_response :success
  end

  test "should update cell_sked" do
    put :update, id: @cell_sked, cell_sked: @cell_sked.attributes
    assert_redirected_to cell_sked_path(assigns(:cell_sked))
  end

  test "should destroy cell_sked" do
    assert_difference('CellSked.count', -1) do
      delete :destroy, id: @cell_sked
    end

    assert_redirected_to cell_skeds_path
  end
end
