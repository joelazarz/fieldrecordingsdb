class Location < ApplicationRecord
  has_many :field_recordings
  belongs_to :field_recording
  belongs_to :artist

  validates :name, presence: true
  validates :name, uniqueness: true
end
