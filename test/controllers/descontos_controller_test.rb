require 'test_helper'

class DescontosControllerTest < ActionController::TestCase
  setup do
    @desconto = descontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desconto" do
    assert_difference('Desconto.count') do
      post :create, desconto: { porcentagem: @desconto.porcentagem, user_id: @desconto.user_id }
    end

    assert_redirected_to desconto_path(assigns(:desconto))
  end

  test "should show desconto" do
    get :show, id: @desconto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desconto
    assert_response :success
  end

  test "should update desconto" do
    patch :update, id: @desconto, desconto: { porcentagem: @desconto.porcentagem, user_id: @desconto.user_id }
    assert_redirected_to desconto_path(assigns(:desconto))
  end

  test "should destroy desconto" do
    assert_difference('Desconto.count', -1) do
      delete :destroy, id: @desconto
    end

    assert_redirected_to descontos_path
  end
end
