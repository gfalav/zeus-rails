require 'test_helper'

class ClienteTelefonosControllerTest < ActionController::TestCase
  setup do
    @cliente_telefono = cliente_telefonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_telefonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_telefono" do
    assert_difference('ClienteTelefono.count') do
      post :create, cliente_telefono: { cliente_id: @cliente_telefono.cliente_id, telefono: @cliente_telefono.telefono, tipotel_id: @cliente_telefono.tipotel_id }
    end

    assert_redirected_to cliente_telefono_path(assigns(:cliente_telefono))
  end

  test "should show cliente_telefono" do
    get :show, id: @cliente_telefono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_telefono
    assert_response :success
  end

  test "should update cliente_telefono" do
    patch :update, id: @cliente_telefono, cliente_telefono: { cliente_id: @cliente_telefono.cliente_id, telefono: @cliente_telefono.telefono, tipotel_id: @cliente_telefono.tipotel_id }
    assert_redirected_to cliente_telefono_path(assigns(:cliente_telefono))
  end

  test "should destroy cliente_telefono" do
    assert_difference('ClienteTelefono.count', -1) do
      delete :destroy, id: @cliente_telefono
    end

    assert_redirected_to cliente_telefonos_path
  end
end
