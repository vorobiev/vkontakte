class VkontakteCampaign < ActiveRecord::Base
  belongs_to :vkontakte_client
  has_many :vkontakte_ads
  attr_accessible :account_id, :all_limit, :campaign_id, :client_id, :day_limit, :name, :start_time, :status, :stop_time, :vkontakte_client_id
end
