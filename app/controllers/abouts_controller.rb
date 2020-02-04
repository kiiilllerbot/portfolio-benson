class AboutsController < ApplicationController
  before_action :set_about, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index]

  def index
    @abouts = About.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to root_path, notice: 'Information was successfully updated.' }
        format.json { render :show, status: :ok, location: @about }
      else
        format.html { render :edit }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_about
      @about = About.find(params[:id])
    end

    def about_params
      params.require(:about).permit(:title, :description, :quote, :fb_link, :ig_link, :twitter_link, :user_id)
    end
end
