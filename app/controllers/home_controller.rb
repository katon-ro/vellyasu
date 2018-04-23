class HomeController < ApplicationController

  def index
  end

  def start_work
    Worktime.create(username: current_user.username, str_time: Time.now,
                            start_breaktime: Time.now.since(2.hour), end_breaktime: Time.now.since(3.hour), work: :true)
    redirect_to :root
  end

  def end_work
    @time = Worktime.where(username: current_user.username, end_time: nil).limit(1)
    @time.update(end_time: Time.now)
    redirect_to :root
  end

  def start_breaktime
     @time = Worktime.where(username: current_user.username).limit(1)
     @time.update(start_breaktime: Time.now, end_breaktime: Time.now.since(1.hour))
     redirect_to :root
  end

  def end_breaktime
    @time = Worktime.where(username: current_user.username).limit(1)
    @time.update(end_breaktime: Time.now)
    redirect_to :root
  end

  private
  def time_params
    params.require(:worktime).permit(:username ,:work, :str_time, :end_time, :start_breaktime,
                                     :end_breaktime)

  end



end