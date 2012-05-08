require 'test_helper'

class CathedrasControllerTest < ActionController::TestCase
  setup do
    @cathedra = cathedras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cathedras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cathedra" do
    assert_difference('Cathedra.count') do
      post :create, cathedra: @cathedra.attributes
    end

    assert_redirected_to cathedra_path(assigns(:cathedra))
  end

  test "should show cathedra" do
    get :show, id: @cathedra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cathedra
    assert_response :success
  end

  test "should update cathedra" do
    put :update, id: @cathedra, cathedra: @cathedra.attributes
    assert_redirected_to cathedra_path(assigns(:cathedra))
  end

  test "should destroy cathedra" do
    assert_difference('Cathedra.count', -1) do
      delete :destroy, id: @cathedra
    end

    assert_redirected_to cathedras_path
  end
end
