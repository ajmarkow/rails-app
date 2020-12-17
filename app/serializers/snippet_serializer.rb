class SnippetSerializer
  include JSONAPI::Serializer
  attributes :trigger, :replacement, :tags
  has_many :tags, as: :taggable
  belongs_to :user
end
