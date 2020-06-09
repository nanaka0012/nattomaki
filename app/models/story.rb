class Story < ApplicationRecord
    belongs_to :novel
    accepts_nested_attributes_for :novel
end
