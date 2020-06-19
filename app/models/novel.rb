class Novel < ApplicationRecord
    has_many :stories, dependent: :destroy
    enum genre: {fantasy:1, love:2, literature:3, sf:4, others:5}

    validates :genre, presence: true
    validates :title, presence: true
    validates :series, presence: true, :numericality => { :less_than_or_equal_to => 10, :greater_than => 1 }
    
    scope :get_by_title, ->(title) {
    where("title like ?", "%#{title}%")
    }
    
    scope :get_by_genre, ->(genre) {
    where(genre: genre)
    }
    
end
