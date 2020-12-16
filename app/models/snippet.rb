class Snippet < ApplicationRecord
  has_many :tags, as :taggable
end
