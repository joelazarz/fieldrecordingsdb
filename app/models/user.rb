class User < ApplicationRecord
    has_secure_password
    has_many :follows
    has_many :field_recordings, through: :follows
    has_many :comments

    validates :username, presence: true
    validates :username, uniqueness: true

    validates :password, presence: true
    
    validates :email, presence: true
    validates :email, uniqueness: true
    
end
