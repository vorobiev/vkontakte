require 'test_helper'

class VkontakteCampaignsControllerTest < ActionController::TestCase
  setup do
    @vkontakte_campaign = vkontakte_campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vkontakte_campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vkontakte_campaign" do
    assert_difference('VkontakteCampaign.count') do
      post :create, vkontakte_campaign: { account_id: @vkontakte_campaign.account_id, all_limit: @vkontakte_campaign.all_limit, campaign_id: @vkontakte_campaign.campaign_id, client_id: @vkontakte_campaign.client_id, day_limit: @vkontakte_campaign.day_limit, name: @vkontakte_campaign.name, start_time: @vkontakte_campaign.start_time, status: @vkontakte_campaign.status, stop_time: @vkontakte_campaign.stop_time }
    end

    assert_redirected_to vkontakte_campaign_path(assigns(:vkontakte_campaign))
  end

  test "should show vkontakte_campaign" do
    get :show, id: @vkontakte_campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vkontakte_campaign
    assert_response :success
  end

  test "should update vkontakte_campaign" do
    put :update, id: @vkontakte_campaign, vkontakte_campaign: { account_id: @vkontakte_campaign.account_id, all_limit: @vkontakte_campaign.all_limit, campaign_id: @vkontakte_campaign.campaign_id, client_id: @vkontakte_campaign.client_id, day_limit: @vkontakte_campaign.day_limit, name: @vkontakte_campaign.name, start_time: @vkontakte_campaign.start_time, status: @vkontakte_campaign.status, stop_time: @vkontakte_campaign.stop_time }
    assert_redirected_to vkontakte_campaign_path(assigns(:vkontakte_campaign))
  end

  test "should destroy vkontakte_campaign" do
    assert_difference('VkontakteCampaign.count', -1) do
      delete :destroy, id: @vkontakte_campaign
    end

    assert_redirected_to vkontakte_campaigns_path
  end
end
