class Artist < ApplicationRecord
    has_secure_password
    has_many :field_recordings
    has_many_attached :photos
end
