class Admin::MeetingsController < ApplicationController
  def index
    @meetings = current_admin.meetings
    respond_with @meetings
  end

  def new
    @meeting = Meeting.new
    respond_with @meeting
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
