class Comment < ApplicationRecord
    belongs_to :field_recording
    belongs_to :user
end
