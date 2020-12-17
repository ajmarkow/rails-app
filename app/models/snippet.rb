class Snippet < ApplicationRecord
  attr_accessor :trigger, :replacement, :is_public, :is_form
  has_many :tags, as: :taggable
  validates_presence_of :trigger,:replacement
end
