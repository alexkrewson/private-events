class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  # GET /sessions.json
  def index
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    # @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
  #   @session = Session.new(session_params)

  #   respond_to do |format|
  #     if @session.save
  #       format.html { redirect_to @session, notice: 'Session was successfully created.' }
  #       format.json { render :show, status: :created, location: @session }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @session.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /sessions/1
  # # PATCH/PUT /sessions/1.json
  # def update
  #   respond_to do |format|
  #     if @session.update(session_params)
  #       format.html { redirect_to @session, notice: 'Session was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @session }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @session.errors, status: :unprocessable_entity }
  #     end
  #   end
  # @sessionusername = session[:username]
  puts "heeeeyooooooo"
  # puts params[:username]
  # @sessionusername = params[:username]

  # puts @sessionusername

  user  = User.find_by_username(params[:username])
  session[:user_id] = user.id

  puts user.id

  redirect_to root_url

  
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy

    # @clear = session[:user_id] = nil

    # @session.destroy
    # respond_to do |format|
    #   format.html { redirect_to sessions_url, notice: 'Session was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
 
end
