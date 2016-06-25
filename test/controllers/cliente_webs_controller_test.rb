require 'test_helper'

class ClienteWebsControllerTest < ActionController::TestCase
  setup do
    @cliente_web = cliente_webs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_webs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_web" do
    assert_difference('ClienteWeb.count') do
      post :create, cliente_web: { cliente_id: @cliente_web.cliente_id, tipoweb_id: @cliente_web.tipoweb_id, web: @cliente_web.web }
    end

    assert_redirected_to cliente_web_path(assigns(:cliente_web))
  end

  test "should show cliente_web" do
    get :show, id: @cliente_web
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_web
    assert_response :success
  end

  test "should update cliente_web" do
    patch :update, id: @cliente_web, cliente_web: { cliente_id: @cliente_web.cliente_id, tipoweb_id: @cliente_web.tipoweb_id, web: @cliente_web.web }
    assert_redirected_to cliente_web_path(assigns(:cliente_web))
  end

  test "should destroy cliente_web" do
    assert_difference('ClienteWeb.count', -1) do
      delete :destroy, id: @cliente_web
    end

    assert_redirected_to cliente_webs_path
  end
end
