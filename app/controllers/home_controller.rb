class HomeController < ApplicationController

    def index
        
    end

    def start_work
        @time = Worktime.create(username: current_user.username, str_time: Time.now,
                                start_breaktime: Time.now.since(3.hour), end_breaktime: Time.now.since(4.hour))
        redirect_to :root
    end

    def end_work
        @user = Worktime.where(username: current_user.username, end_time: nil).order('id desc').limit(1)
        @user.update(end_time: Time.now)
        redirect_to :root
    end

    def start_breaktime
        @user = Worktime.where(username: current_user.username).order('id desc').limit(1)
        @user.update(start_breaktime: Time.now, end_breaktime: Time.now.since(1.hour))
        redirect_to :root
    end

    def end_breaktime
        @user = Worktime.where(username: current_user.username).order('id desc').limit(1)
        @user.update(end_breaktime: Time.now)
        redirect_to :root
    end

end