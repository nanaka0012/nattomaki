class Novel < ApplicationRecord
    has_many :stories, dependent: :destroy
    enum genre: {fantasy:1, love:2, literature:3, sf:4, others:5}

    validates :title, presence: true
end
