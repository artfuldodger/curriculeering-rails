class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :description
end
