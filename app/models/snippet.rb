class Snippet < ApplicationRecord
  has_many :tags, as: :taggable
  validates_presence_of :trigger,:replacement
end
