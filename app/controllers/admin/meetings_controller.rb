class Admin::MeetingsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.admin = current_admin
    @meeting.save
    respond_with @meeting
  end

  private
    def meeting_params
      params.require(:meeting).permit(:name)
    end
end
