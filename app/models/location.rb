class Location < ApplicationRecord
  has_many :field_recordings
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
