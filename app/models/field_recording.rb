class FieldRecording < ApplicationRecord
  has_one :artists
  has_one :location
  has_many :comments
  has_many :follows
  has_one_attached :avatar
  has_one_attached :recording
  validates :title, presence: true
  accepts_nested_attributes_for :location

  is_impressionable

  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end
end
