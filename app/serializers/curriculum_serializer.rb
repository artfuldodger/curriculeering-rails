class CurriculumSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :description

  has_one :instructor
end
