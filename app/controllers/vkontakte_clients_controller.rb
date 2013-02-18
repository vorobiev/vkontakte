class VkontakteClientsController < ApplicationController
  # GET /vkontakte_clients
  # GET /vkontakte_clients.json
  def index
    @vkontakte_clients = VkontakteClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vkontakte_clients }
    end
  end

  # GET /vkontakte_clients/1
  # GET /vkontakte_clients/1.json
  def show
    @vkontakte_client = VkontakteClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vkontakte_client }
    end
  end

  # GET /vkontakte_clients/new
  # GET /vkontakte_clients/new.json
  def new
    @vkontakte_client = VkontakteClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vkontakte_client }
    end
  end

  # GET /vkontakte_clients/1/edit
  def edit
    @vkontakte_client = VkontakteClient.find(params[:id])
  end

  # POST /vkontakte_clients
  # POST /vkontakte_clients.json
  def create
    @vkontakte_client = VkontakteClient.new(params[:vkontakte_client])

    respond_to do |format|
      if @vkontakte_client.save
        format.html { redirect_to @vkontakte_client, notice: 'Vkontakte client was successfully created.' }
        format.json { render json: @vkontakte_client, status: :created, location: @vkontakte_client }
      else
        format.html { render action: "new" }
        format.json { render json: @vkontakte_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vkontakte_clients/1
  # PUT /vkontakte_clients/1.json
  def update
    @vkontakte_client = VkontakteClient.find(params[:id])

    respond_to do |format|
      if @vkontakte_client.update_attributes(params[:vkontakte_client])
        format.html { redirect_to @vkontakte_client, notice: 'Vkontakte client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vkontakte_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vkontakte_clients/1
  # DELETE /vkontakte_clients/1.json
  def destroy
    @vkontakte_client = VkontakteClient.find(params[:id])
    @vkontakte_client.destroy

    respond_to do |format|
      format.html { redirect_to vkontakte_clients_url }
      format.json { head :no_content }
    end
  end
end
