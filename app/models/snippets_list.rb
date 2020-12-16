class SnippetsList < ApplicationRecord
  has_many :snippets
  has_many :tags, as :taggable
end
