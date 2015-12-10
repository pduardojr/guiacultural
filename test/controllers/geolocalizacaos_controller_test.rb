require 'test_helper'

class GeolocalizacaosControllerTest < ActionController::TestCase
  setup do
    @geolocalizacao = geolocalizacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geolocalizacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geolocalizacao" do
    assert_difference('Geolocalizacao.count') do
      post :create, geolocalizacao: { latitude: @geolocalizacao.latitude, longitude: @geolocalizacao.longitude, users_id: @geolocalizacao.users_id }
    end

    assert_redirected_to geolocalizacao_path(assigns(:geolocalizacao))
  end

  test "should show geolocalizacao" do
    get :show, id: @geolocalizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geolocalizacao
    assert_response :success
  end

  test "should update geolocalizacao" do
    patch :update, id: @geolocalizacao, geolocalizacao: { latitude: @geolocalizacao.latitude, longitude: @geolocalizacao.longitude, users_id: @geolocalizacao.users_id }
    assert_redirected_to geolocalizacao_path(assigns(:geolocalizacao))
  end

  test "should destroy geolocalizacao" do
    assert_difference('Geolocalizacao.count', -1) do
      delete :destroy, id: @geolocalizacao
    end

    assert_redirected_to geolocalizacaos_path
  end
end
