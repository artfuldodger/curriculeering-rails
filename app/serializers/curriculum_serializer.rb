class CurriculumSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :description, :lesson_ids

  has_one :instructor
end
