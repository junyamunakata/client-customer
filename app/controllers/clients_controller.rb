class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: [:show, :edit, :update]
  def index
    @clients = Client.page(params[:page])
    @clients = Client.page(params[:page]).per(10)
  end

  def show
    @comment = @client.comments.build
    @comments = Comment.where(client_id: @client.id)
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
    
  end

  def update

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

  def set_client
    @client = Client.find(params[:id])
  end
end
