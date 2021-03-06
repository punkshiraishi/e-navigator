# frozen_string_literal: true

class InterviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @interview = current_user.interviews.build
  end

  def create
    @interview = current_user.interviews.build(interview_params)
    if @interview.save
      flash[:success] = '面接を予約しました'
      redirect_to user_interviews_path(current_user)
    else
      flash[:danger] = '面接の予約に失敗しました。（過去の日付は選択できません）'
      render 'new'
    end
  end

  def index
    @interviews = current_user.interviews.includes(:user, :interviewer)
  end

  def edit; end

  def update; end

  def destroy
    current_user.interviews.find_by(id: params[:id]).destroy
    flash[:success] = '面接予約を削除しました'
    redirect_to user_interviews_path(current_user)
  end

  private

  def interview_params
    params.require(:interview).permit(:interviewer_id, :schedule)
  end
end
