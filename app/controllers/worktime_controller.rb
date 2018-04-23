class WorktimeController < ApplicationController

  def index
    @works = Worktime.all
  end

  def edit
    @day = Worktime.find(params[:id])
  end

  def update
    @day = Worktime.find(params[:id])
    if @day.update_attributes(day_params)
      flash[:success] = "day updated"
      redirect_to @day
    else
      render 'edit'
    end
  end

  def destroy
    Worktime.find(params[:id]).destroy
    render 'index'
  end

  private
  def day_params
    params.require(:worktime).permit(:work, :str_time, :end_time, :start_breaktime,
                                 :end_breaktime, :active)

  end

end
