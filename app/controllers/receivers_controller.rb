class ReceiversController < ApplicationController
  before_action :set_receiver, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!


  # GET /receivers
  # GET /receivers.json
  def index
    @receivers = Receiver.mine(current_user).all
  end

  # GET /receivers/1
  # GET /receivers/1.json
  def show
  end

  # GET /receivers/new
  def new
    @receiver = Receiver.new
  end

  # GET /receivers/1/edit
  def edit
  end

  # POST /receivers
  # POST /receivers.json
  def create
    @receiver = Receiver.new(receiver_params)
    @receiver.user = current_user
    @receiver.active=true


    respond_to do |format|
      if @receiver.save
        format.html { redirect_to @receiver, notice: 'Receiver was successfully created.' }
        format.json { render action: 'show', status: :created, location: @receiver }
      else
        format.html { render action: 'new' }
        format.json { render json: @receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receivers/1
  # PATCH/PUT /receivers/1.json
  def update
    respond_to do |format|
      if @receiver.update(receiver_params)
        format.html { redirect_to @receiver, notice: 'Receiver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receivers/1
  # DELETE /receivers/1.json
  def destroy
    @receiver.destroy
    respond_to do |format|
      format.html { redirect_to receivers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receiver
      #@receiver = Receiver.find(params[:id])


      @receiver = Receiver.mine(current_user).where("id = ?", params[:id]).first

      if @receiver.nil?
        redirect_to root_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receiver_params
      params.require(:receiver).permit(:phone, :name, :active, :last_sent, :sex)
    end
end
