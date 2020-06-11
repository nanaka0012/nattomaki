class Story < ApplicationRecord
    belongs_to :novel
    accepts_nested_attributes_for :novel

    validates :subtitle, presence: true
    validates :content, presence: true
    validates :penname, presence: true

end
