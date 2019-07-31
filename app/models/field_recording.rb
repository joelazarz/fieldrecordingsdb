class FieldRecording < ApplicationRecord
  has_one :artists
  has_one :locations
  has_many :comments
  has_many :follows
  has_many_attached :photos
  has_one_attached :recording
  validates :title, presence: true
  accepts_nested_attributes_for :locations
end
