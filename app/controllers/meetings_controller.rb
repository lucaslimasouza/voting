# frozen_string_literal: true

class MeetingsController < ApplicationController
  layout "meeting"

  def index
    @meetings = { meetings: Meeting.all }
  end
end
