class WorktimeController < ApplicationController

  def index
    @work = Worktime.all
  end

end
