require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { apellido2: @cliente.apellido2, apellido: @cliente.apellido, ciiu_id: @cliente.ciiu_id, contacto: @cliente.contacto, direccion_id: @cliente.direccion_id, documento: @cliente.documento, emisordoc_id: @cliente.emisordoc_id, nombres: @cliente.nombres, tcliente_id: @cliente.tcliente_id, tipodoc_id: @cliente.tipodoc_id }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { apellido2: @cliente.apellido2, apellido: @cliente.apellido, ciiu_id: @cliente.ciiu_id, contacto: @cliente.contacto, direccion_id: @cliente.direccion_id, documento: @cliente.documento, emisordoc_id: @cliente.emisordoc_id, nombres: @cliente.nombres, tcliente_id: @cliente.tcliente_id, tipodoc_id: @cliente.tipodoc_id }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
