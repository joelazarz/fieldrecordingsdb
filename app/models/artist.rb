class Artist < ApplicationRecord
  has_many :field_recordings
  has_one_attached :avatar
end
