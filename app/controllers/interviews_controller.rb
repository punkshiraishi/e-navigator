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

  def edit
    @interview = current_user.interviews.find_by(id: params[:id])
  end

  def update
    @interview = Interview.find(params[:id])
    @interview.update_attributes(interview_params)
    @interview.update_attributes(attendable: nil)
    redirect_to user_interviews_path(current_user)
  end

  def destroy
    @interview = current_user.interviews.find_by(id: params[:id])
    @interview.destroy
    flash[:success] = '面接予定を削除しました'
    redirect_to user_interviews_path(current_user)
  end

  private

  def interview_params
    params.require(:interview).permit(:interviewer_id, :interviewee_id, :schedule)
  end
end
