class Routine < ApplicationRecord
  belongs_to :exercise
  belongs_to :user

  ### WE SHOULD LIMIT THE AMOUNT OF EXERCISES YOU CAN ADD PER DAY PER ROUTINE. IS THAT A VALIDATION?
  
end
