class Work < ApplicationRecord
    acts_as_taggable_on :tags
    belongs_to :user
    has_many :chapters
end
