class AboutsController < ApplicationController
  before_action :set_about, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]

  def index
    @abouts = About.all
  end

  def edit
  end

  def show
  end

  def update
      if @about.update(about_params)
        redirect_to root_path, notice: 'Information was successfully updated.'
      else
        redirect_to root_path
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
