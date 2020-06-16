class Story < ApplicationRecord
    acts_as_tree

    belongs_to :novel
    accepts_nested_attributes_for :novel

    validates :subtitle, presence: true
    validates :content, presence: true, length: { maximum: 4000 }
    validates :penname, presence: true

end
