class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :gender, :age, :height, :weight, :activity_level, :tdee, :water_intake
end
