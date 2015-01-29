class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :notes
end
