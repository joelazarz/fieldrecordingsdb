class Follow < ApplicationRecord
    belongs_to :user
    belongs_to :field_recording
end
