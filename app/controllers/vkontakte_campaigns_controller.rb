class VkontakteCampaignsController < ApplicationController
  # GET /vkontakte_campaigns
  # GET /vkontakte_campaigns.json
  def index
    @vkontakte_campaigns = VkontakteCampaign.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vkontakte_campaigns }
    end
  end

  # GET /vkontakte_campaigns/1
  # GET /vkontakte_campaigns/1.json
  def show
    @vkontakte_campaign = VkontakteCampaign.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vkontakte_campaign }
    end
  end

  # GET /vkontakte_campaigns/new
  # GET /vkontakte_campaigns/new.json
  def new
    @vkontakte_campaign = VkontakteCampaign.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vkontakte_campaign }
    end
  end

  # GET /vkontakte_campaigns/1/edit
  def edit
    @vkontakte_campaign = VkontakteCampaign.find(params[:id])
  end

  # POST /vkontakte_campaigns
  # POST /vkontakte_campaigns.json
  def create
    @vkontakte_campaign = VkontakteCampaign.new(params[:vkontakte_campaign])

    respond_to do |format|
      if @vkontakte_campaign.save
        format.html { redirect_to @vkontakte_campaign, notice: 'Vkontakte campaign was successfully created.' }
        format.json { render json: @vkontakte_campaign, status: :created, location: @vkontakte_campaign }
      else
        format.html { render action: "new" }
        format.json { render json: @vkontakte_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vkontakte_campaigns/1
  # PUT /vkontakte_campaigns/1.json
  def update
    @vkontakte_campaign = VkontakteCampaign.find(params[:id])

    respond_to do |format|
      if @vkontakte_campaign.update_attributes(params[:vkontakte_campaign])
        format.html { redirect_to @vkontakte_campaign, notice: 'Vkontakte campaign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vkontakte_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vkontakte_campaigns/1
  # DELETE /vkontakte_campaigns/1.json
  def destroy
    @vkontakte_campaign = VkontakteCampaign.find(params[:id])
    @vkontakte_campaign.destroy

    respond_to do |format|
      format.html { redirect_to vkontakte_campaigns_url }
      format.json { head :no_content }
    end
  end
end
