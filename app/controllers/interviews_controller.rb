# frozen_string_literal: true

class InterviewsController < ApplicationController
  def new
    @interview = current_user.interviews.build
  end

  def index; end

  def create
    @interview = current_user.interviews.build(interview_params)
    if @interview.save
      flash[:success] = '面接を予約しました'
      redirect_to user_interviews_path(current_user)
    else
      flash[:danger] = '面接の予約に失敗しました'
    end
  end

  private

  def interview_params
    params.require(:interview).permit(:interviewer_id, :interviewee_id, :schedule)
  end
end
