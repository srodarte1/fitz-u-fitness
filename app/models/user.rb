class User < ApplicationRecord
    has_many :routines, dependent: :destroy
    has_many :exercises, through: :routines
    has_secure_password
    
    validates_presence_of :email, :first_name
    validates :email, uniqueness: true
    validates :first_name, uniqueness: true
    validates :password, length: { minimum: 8 }
end
