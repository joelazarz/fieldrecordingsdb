class User < ApplicationRecord
    has_secure_password
    has_many :field_recordings, through: :follows
    has_many :notations

    validates :username, presence: true
    validates :username, uniqueness: true

    validates :password, presence: true
    
    validates :email, presence: true
    validates :email, uniqueness: true
    
end
