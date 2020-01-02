# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: '白石 祐大',
  email: 'test1@test.com',
  password: 'password',
  birth: Time.parse('1992/10/31'),
  gender: 2,
  school: '東京農工大学'
)

User.create!(
  name: '宮里 美紀',
  email: 'test2@test.com',
  password: 'password',
  birth: Time.parse('1993/8/24'),
  gender: 1,
  school: '横浜市立大学'
)

User.create!(
  name: 'ピセック 凜花',
  email: 'test3@test.com',
  password: 'password',
  birth: Time.parse('2015/3/25'),
  gender: 1
)
