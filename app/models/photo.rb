class Photo < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  validates_presence_of :photo
  has_attached_file :photo, :styles => { full: '2048x2048>',
                                       medium: '300x300>',
                                        thumb: '100x100>' }
end
