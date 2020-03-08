# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InterviewsController, type: :request do
  describe 'GET #new' do
    before do
      @user = FactoryBot.create(:user)
    end

    context 'as an authenticated user' do
      it 'responds successfully' do
        sign_in @user
        get new_user_interview_path(@user), params: { user_id: @user.id }
        expect(response).to be_successful
      end
    end
  end
end
