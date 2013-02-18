require 'test_helper'

class VkontakteClientsControllerTest < ActionController::TestCase
  setup do
    @vkontakte_client = vkontakte_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vkontakte_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vkontakte_client" do
    assert_difference('VkontakteClient.count') do
      post :create, vkontakte_client: { all_limit: @vkontakte_client.all_limit, client_id: @vkontakte_client.client_id, day_limit: @vkontakte_client.day_limit, name: @vkontakte_client.name }
    end

    assert_redirected_to vkontakte_client_path(assigns(:vkontakte_client))
  end

  test "should show vkontakte_client" do
    get :show, id: @vkontakte_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vkontakte_client
    assert_response :success
  end

  test "should update vkontakte_client" do
    put :update, id: @vkontakte_client, vkontakte_client: { all_limit: @vkontakte_client.all_limit, client_id: @vkontakte_client.client_id, day_limit: @vkontakte_client.day_limit, name: @vkontakte_client.name }
    assert_redirected_to vkontakte_client_path(assigns(:vkontakte_client))
  end

  test "should destroy vkontakte_client" do
    assert_difference('VkontakteClient.count', -1) do
      delete :destroy, id: @vkontakte_client
    end

    assert_redirected_to vkontakte_clients_path
  end
end
