class VkontakteAdsController < ApplicationController
  # GET /vkontakte_ads
  # GET /vkontakte_ads.json
  def index
    @vkontakte_ads = VkontakteAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vkontakte_ads }
    end
  end

  # GET /vkontakte_ads/1
  # GET /vkontakte_ads/1.json
  def show
    @vkontakte_ad = VkontakteAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vkontakte_ad }
    end
  end

  # GET /vkontakte_ads/new
  # GET /vkontakte_ads/new.json
  def new
    @vkontakte_ad = VkontakteAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vkontakte_ad }
    end
  end

  # GET /vkontakte_ads/1/edit
  def edit
    @vkontakte_ad = VkontakteAd.find(params[:id])
  end

  # POST /vkontakte_ads
  # POST /vkontakte_ads.json
  def create
    @vkontakte_ad = VkontakteAd.new(params[:vkontakte_ad])

    respond_to do |format|
      if @vkontakte_ad.save
        format.html { redirect_to @vkontakte_ad, notice: 'Vkontakte ad was successfully created.' }
        format.json { render json: @vkontakte_ad, status: :created, location: @vkontakte_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @vkontakte_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vkontakte_ads/1
  # PUT /vkontakte_ads/1.json
  def update
    @vkontakte_ad = VkontakteAd.find(params[:id])

    respond_to do |format|
      if @vkontakte_ad.update_attributes(params[:vkontakte_ad])
        format.html { redirect_to @vkontakte_ad, notice: 'Vkontakte ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vkontakte_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vkontakte_ads/1
  # DELETE /vkontakte_ads/1.json
  def destroy
    @vkontakte_ad = VkontakteAd.find(params[:id])
    @vkontakte_ad.destroy

    respond_to do |format|
      format.html { redirect_to vkontakte_ads_url }
      format.json { head :no_content }
    end
  end
end
