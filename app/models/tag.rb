class Tag < ApplicationRecord
  belongs_to :taggable, polymorphic: true, optional: true
  has_many :snippets
  validates :slug, uniqueness: true
end
