# frozen_string_literal: true

class MeetingsController < ApplicationController
  layout "meeting"

  def index
    @meetings =  { meetings: meetings_serialized }
  end

  private

  def meetings_serialized
    Meeting.all.as_json(include: :job_roles)
  end
end
