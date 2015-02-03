class LessonSerializer < ActiveModel::Serializer
  has_many :resources

  attributes :id, :title, :description, :notes
end
