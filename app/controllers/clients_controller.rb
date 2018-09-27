class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end
  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @clent.update(client_params)
      redirect_to @client
    else
      render :edit
    end
  end

  private
  def client_params
    params.require(:client).permit(:family_name,
    :given_name,
    :email)
  end
end
