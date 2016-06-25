require 'test_helper'

class ClienteDocumentosControllerTest < ActionController::TestCase
  setup do
    @cliente_documento = cliente_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_documento" do
    assert_difference('ClienteDocumento.count') do
      post :create, cliente_documento: { cliente_id: @cliente_documento.cliente_id, codseg: @cliente_documento.codseg, documento: @cliente_documento.documento, emisordoc_id: @cliente_documento.emisordoc_id, tipodoc_id: @cliente_documento.tipodoc_id, vencimiento: @cliente_documento.vencimiento }
    end

    assert_redirected_to cliente_documento_path(assigns(:cliente_documento))
  end

  test "should show cliente_documento" do
    get :show, id: @cliente_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_documento
    assert_response :success
  end

  test "should update cliente_documento" do
    patch :update, id: @cliente_documento, cliente_documento: { cliente_id: @cliente_documento.cliente_id, codseg: @cliente_documento.codseg, documento: @cliente_documento.documento, emisordoc_id: @cliente_documento.emisordoc_id, tipodoc_id: @cliente_documento.tipodoc_id, vencimiento: @cliente_documento.vencimiento }
    assert_redirected_to cliente_documento_path(assigns(:cliente_documento))
  end

  test "should destroy cliente_documento" do
    assert_difference('ClienteDocumento.count', -1) do
      delete :destroy, id: @cliente_documento
    end

    assert_redirected_to cliente_documentos_path
  end
end
