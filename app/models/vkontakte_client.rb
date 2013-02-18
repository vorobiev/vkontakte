class VkontakteClient < ActiveRecord::Base
  has_many :vkontakte_campaigns
  attr_accessible :all_limit, :client_id, :day_limit, :name
end
