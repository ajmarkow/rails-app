class Tag < ApplicationRecord
  belongs_to :taggable, polymorphic: true, optional: true
  validates :slug, uniqueness: true
end
