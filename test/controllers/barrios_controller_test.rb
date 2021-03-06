require 'test_helper'

class BarriosControllerTest < ActionController::TestCase
  setup do
    @barrio = barrios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barrios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barrio" do
    assert_difference('Barrio.count') do
      post :create, barrio: { barrio: @barrio.barrio, localidad_id: @barrio.localidad_id }
    end

    assert_redirected_to barrio_path(assigns(:barrio))
  end

  test "should show barrio" do
    get :show, id: @barrio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barrio
    assert_response :success
  end

  test "should update barrio" do
    patch :update, id: @barrio, barrio: { barrio: @barrio.barrio, localidad_id: @barrio.localidad_id }
    assert_redirected_to barrio_path(assigns(:barrio))
  end

  test "should destroy barrio" do
    assert_difference('Barrio.count', -1) do
      delete :destroy, id: @barrio
    end

    assert_redirected_to barrios_path
  end
end
