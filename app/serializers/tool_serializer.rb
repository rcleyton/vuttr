class ToolSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :description, :tags
end
