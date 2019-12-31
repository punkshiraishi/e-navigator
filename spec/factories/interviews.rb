# frozen_string_literal: true

FactoryBot.define do
  factory :interview do
    schedule { '2019-12-31 14:53:30' }
    attendable { false }
  end
end
