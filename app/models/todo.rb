class Todo < ApplicationRecord
    validates :item, presence: true

    belongs_to :user
    has_many :todos


end
