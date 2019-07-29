class Artist < ApplicationRecord
    has_many :field_recordings
    has_many_attached :photos
end
