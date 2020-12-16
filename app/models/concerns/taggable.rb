module taggable
  extend ActiveSupport::Concern

  included do
    has_many :snippets, :as => :taggable
    has_many :snippets_lists, :as => :taggable
  end
end