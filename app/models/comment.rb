class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :board

   validates :board, presence: true
   validates :comment, presence: true, length: { in: 1..1000 }
end
