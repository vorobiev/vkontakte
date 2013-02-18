require 'vkontakte_api'
require 'awesome_print'

namespace :sync do
  task :data => :environment  do
    
    p 'Fetching data from vkontakte'
    
    # LogMessage.create({:status => LogMessage::NOTICE, :user_id => 0, :message => 'Fetching hourly rests...'})
    
    
    # flushing
    VkontakteClient.destroy_all
    VkontakteCampaign.destroy_all
    VkontakteAd.destroy_all
    
    # data for account
    token = 'c54955014a375de79accf483d4ffc2429f447b98cfcc9ba2ac344513567297c1be5b3994319989bfdf4eb'
    @vk = VkontakteApi::Client.new(token)
    account_id = 1900000682

    
    # processing clients
    clients = @vk.ads.get_clients({ :account_id => account_id })
    clients.each do |client|
      local_client = VkontakteClient.new({:client_id => client['id'], :name => client['name'], :day_limit => client['day_limit'], :all_limit => client['all_limit']})
      local_client.save
      
      campaigns = @vk.ads.get_campaigns({ :account_id => account_id , :client_id => local_client.client_id })
      campaigns.each do |campaign|
        local_campaign = VkontakteCampaign.new({
          :campaign_id  => campaign['id'],
          :name         => campaign['name'],
          :status       => campaign['status'],
          :day_limit    => campaign['day_limit'],
          :all_limit    => campaign['all_limit'],
          :start_time   => campaign['start_time'],
          :stop_time    => campaign['stop_time'],
          :client_id    => local_client.client_id ,
          :account_id   => account_id ,
          :vkontakte_client_id => local_client.id
        })
        local_campaign.save
        sleep 1
        ads = @vk.ads.get_ads({ :account_id => account_id, :client_id => local_client.client_id, :campaign_id => local_campaign.campaign_id, :include_deleted => 1 })
        ads.each do |ad|
          local_ad = VkontakteAd.new({
            :ad_id          => ad['id'],
            :name           => ad['name'],
            :status         => ad['status'],
            :approved       => ad['approved'],
            :campaign_id    => ad['campaign_id'],
            :cpc            => ad['cpc'],
            :cpm            => ad['cpm'],
            :disclaimer     => ad['disclaimer'].nil? ? 0 : 1,
            :vkontakte_campaign_id => local_campaign.id
          })
          local_ad.save
        end
        sleep 1
      end
    end
    p 'Done.'
    # LogMessage.create({:status => LogMessage::NOTICE, :user_id => 0, :message => 'Done fetching hourly rests.'})
  end
end