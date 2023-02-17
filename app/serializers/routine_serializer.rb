class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :rest, :sets
  has_one :exercise
  # has_one :user
end
