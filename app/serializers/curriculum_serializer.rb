class CurriculumSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_one :instructor
end
