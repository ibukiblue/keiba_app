class Board < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: { in: 4..127 }
end
