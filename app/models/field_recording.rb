class FieldRecording < ApplicationRecord
  has_one :artists
  has_one :location
  has_many :comments
  has_many :follows
  has_many_attached :photos
  has_one_attached :recording
  validates :title, presence: true
  accepts_nested_attributes_for :location

  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end

end
