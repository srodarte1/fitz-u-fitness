class User < ApplicationRecord
    has_many :routines
    has_many :exercises, through: :routines
    has_secure_password
    
    validates_presence_of :email, :username
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    validates :password, length: { minimum: 8 }
end
