# frozen_string_literal: true

class LgtmsController < ApplicationController
  before_action :set_lgtm, only: %i[update destroy]

  def index
    @lgtm = Lgtm.new
    @lgtms = Lgtm.all
  end

  def create
    @lgtm = Lgtm.new(lgtm_params)

    if @lgtm.save
      redirect_to lgtms_path
    else
      @lgtms = Lgtm.all
      render :index
    end
  end

  def destroy
    @lgtm.destroy
    redirect_to lgtms_url, notice: 'destroyed.'
  end

  private

  def set_lgtm
    @lgtm = Lgtm.find(params[:id])
  end

  def lgtm_params
    params.require(:lgtm).permit(:url)
  end
end
