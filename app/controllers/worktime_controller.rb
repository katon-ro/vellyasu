class WorktimeController < ApplicationController

  def index
    if params[:month].nil?
      @select_month = Time.now
    else
      @select_month = Time.mktime(params[:month].to_i)
    end
    start_day = @select_month.beginning_of_month
    end_day = @select_month.end_of_month
    @works = Worktime.where(str_time: start_day..end_day).all
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
