require 'test_helper'

class VkontakteAdsControllerTest < ActionController::TestCase
  setup do
    @vkontakte_ad = vkontakte_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vkontakte_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vkontakte_ad" do
    assert_difference('VkontakteAd.count') do
      post :create, vkontakte_ad: { ad_id: @vkontakte_ad.ad_id, all_limit: @vkontakte_ad.all_limit, approved: @vkontakte_ad.approved, campaign_id: @vkontakte_ad.campaign_id, cpc: @vkontakte_ad.cpc, cpm: @vkontakte_ad.cpm, disclaimer: @vkontakte_ad.disclaimer, name: @vkontakte_ad.name, status: @vkontakte_ad.status }
    end

    assert_redirected_to vkontakte_ad_path(assigns(:vkontakte_ad))
  end

  test "should show vkontakte_ad" do
    get :show, id: @vkontakte_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vkontakte_ad
    assert_response :success
  end

  test "should update vkontakte_ad" do
    put :update, id: @vkontakte_ad, vkontakte_ad: { ad_id: @vkontakte_ad.ad_id, all_limit: @vkontakte_ad.all_limit, approved: @vkontakte_ad.approved, campaign_id: @vkontakte_ad.campaign_id, cpc: @vkontakte_ad.cpc, cpm: @vkontakte_ad.cpm, disclaimer: @vkontakte_ad.disclaimer, name: @vkontakte_ad.name, status: @vkontakte_ad.status }
    assert_redirected_to vkontakte_ad_path(assigns(:vkontakte_ad))
  end

  test "should destroy vkontakte_ad" do
    assert_difference('VkontakteAd.count', -1) do
      delete :destroy, id: @vkontakte_ad
    end

    assert_redirected_to vkontakte_ads_path
  end
end
