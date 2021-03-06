# frozen_string_literal: true

User.create!(
  name: 'Yuma Shiraishi',
  email: 'shiraishi@test.com',
  password: 'password',
  password_confirmation: 'password',
  gender: 'male',
  role: 'member',
)

User.create!(
  name: 'Yosuke Obata',
  email: 'obata@test.com',
  password: 'password',
  password_confirmation: 'password',
  gender: 'male',
  role: 'interviewer',
)

User.create!(
  name: 'Miki Miyazato',
  email: 'miyazato@test.com',
  password: 'password',
  password_confirmation: 'password',
  gender: 'female',
  role: 'interviewer',
)
