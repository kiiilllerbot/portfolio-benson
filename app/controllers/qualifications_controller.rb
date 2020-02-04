class QualificationsController < ApplicationController
  before_action :set_qualification, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]

  def index
    @qualifications = Qualification.all
  end

  def show
  end

  def new
    @qualification = current_user.qualifications.build
  end

  def edit
  end

  def create
    @qualification = current_user.qualifications.build(qualification_params)

    respond_to do |format|
      if @qualification.save
        format.html { redirect_to @qualification, notice: 'Qualification was successfully created.' }
        format.json { render :show, status: :created, location: @qualification }
      else
        format.html { render :new }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @qualification.update(qualification_params)
        format.html { redirect_to @qualification, notice: 'Qualification was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualification }
      else
        format.html { render :edit }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @qualification.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_url, notice: 'Qualification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_qualification
      @qualification = Qualification.find(params[:id])
    end

    def qualification_params
      params.require(:qualification).permit(:name, :description, :user_id)
    end
end
