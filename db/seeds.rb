# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
case Rails.env
when "development"
  (0..3).each do |i|
    @user = User.create!(email: "test#{i}@example.com", password: 'password', password_confirmation: 'password')
    (0..3).each do |n|
      @event = Event.create!(name: "event#{i}-#{n}", user_id: @user.id)
    end
  end
when "production"
end
