class ArtistFavorite < ApplicationRecord
    belongs_to :artist
    belongs_to :field_recording
end
