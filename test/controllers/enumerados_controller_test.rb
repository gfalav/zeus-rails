require 'test_helper'

class EnumeradosControllerTest < ActionController::TestCase
  setup do
    @enumerado = enumerados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enumerados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enumerado" do
    assert_difference('Enumerado.count') do
      post :create, enumerado: { descripcion: @enumerado.descripcion, radical: @enumerado.radical }
    end

    assert_redirected_to enumerado_path(assigns(:enumerado))
  end

  test "should show enumerado" do
    get :show, id: @enumerado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enumerado
    assert_response :success
  end

  test "should update enumerado" do
    patch :update, id: @enumerado, enumerado: { descripcion: @enumerado.descripcion, radical: @enumerado.radical }
    assert_redirected_to enumerado_path(assigns(:enumerado))
  end

  test "should destroy enumerado" do
    assert_difference('Enumerado.count', -1) do
      delete :destroy, id: @enumerado
    end

    assert_redirected_to enumerados_path
  end
end
