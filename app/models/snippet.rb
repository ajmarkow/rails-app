class Snippet < ApplicationRecord
  scope :it_aint_private, -> {where("is_public = true")}
  has_many :tags, as: :taggable
  validates_presence_of :trigger,:replacement
end
