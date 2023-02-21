class Exercise < ApplicationRecord
    has_many :routines, dependent: :destroy
    has_many :users, through: :routines

end
