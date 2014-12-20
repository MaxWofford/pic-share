class Event < ActiveRecord::Base
  # The original creator owns the event
  belongs_to :user
  # The event has images, which are stored as photos
  has_many :photos
  # Many users have permission to edit the event
  has_many :user_permissions
end
