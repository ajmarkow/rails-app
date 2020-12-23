class Snippet < ApplicationRecord
  scope :it_aint_private, -> {where("is_public = true")}
  scope :belongs_to_user, ->(user_id) {where("user_id = ?")}

  has_many :tags, as: :taggable
  validates_presence_of :trigger,:replacement
end
