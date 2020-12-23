class SnippetsList < ApplicationRecord
  has_many :snippets
  has_many :tags, as: :taggable
  has_one :user
end
