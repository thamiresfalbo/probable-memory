class Work < ApplicationRecord
    acts_as_taggable_on :tags
    belongs_to :user
end
