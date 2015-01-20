class CurriculumSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  belongs_to :instructor
end
