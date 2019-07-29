class FieldRecording < ApplicationRecord
    has_one :artists
    has_one :locations
    has_many :notations
    has_many :follows
    has_many_attached :photos
end
