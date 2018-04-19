class WorktimeController < ApplicationController

  def index
    @works = Worktime.all
  end

  def edit
    @day = Worktime.find(params[:id])
  end
end
