# frozen_string_literal: true

class Interview < ApplicationRecord
  belongs_to :interviewer, class_name: 'User'
  validates :interviewer_id, presence: true
  validates :interviewee_id, presence: true
  validates :schedule, presence: true

  def status
    case attendable
    when nil then '保留中'
    when true then '確定'
    when false then '出席不可'
    end
  end
end
