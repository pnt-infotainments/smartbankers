class Administrator::UsersController < ApplicationController
  before_action :set_administrator_user, only: [:show, :edit, :update, :destroy]

  # GET /administrator/users
  # GET /administrator/users.json
  def index
    @administrator_users = User.all
  end

  # GET /administrator/users/1
  # GET /administrator/users/1.json
  def show
  end

  # GET /administrator/users/new
  # def new
  #   @administrator_user = User.new
  # end

  # GET /administrator/users/1/edit
  def edit
  end

  # POST /administrator/users
  # POST /administrator/users.json
  # def create
  #   @administrator_user = User.new(administrator_user_params)

  #   respond_to do |format|
  #     if @administrator_user.save
  #       format.html { redirect_to @administrator_user, notice: 'User was successfully created.' }
  #       format.json { render :show, status: :created, location: @administrator_user }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @administrator_user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /administrator/users/1
  # PATCH/PUT /administrator/users/1.json
  def update
    respond_to do |format|
      if @administrator_user.update(administrator_user_params)
        format.html { redirect_to @administrator_user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrator_user }
      else
        format.html { render :edit }
        format.json { render json: @administrator_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrator/users/1
  # DELETE /administrator/users/1.json
  def destroy
    @administrator_user.destroy
    respond_to do |format|
      format.html { redirect_to administrator_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator_user
      @administrator_user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_user_params
      params[:administrator_user]
    end
end
