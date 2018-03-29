class HomeController < ApplicationController

    def index
        
    end

    def start_work
        @time = Worktime.create(username: current_user.username, str_time: Time.now)
        redirect_to :root
    end

    def end_work
        @user = Worktime.where(username: current_user.username, end_time: nil).order(id: :ask).limit(1)
        @user.update(end_time: Time.now)
        redirect_to :root
    end

end