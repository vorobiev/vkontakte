class VkontakteAd < ActiveRecord::Base
  belongs_to :vkontakte_campaign
  attr_accessible :ad_id, :all_limit, :approved, :campaign_id, :cpc, :cpm, :disclaimer, :name, :status, :vkontakte_campaign_id
end
