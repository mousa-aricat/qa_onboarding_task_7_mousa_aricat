class Room < ApplicationRecord
    belongs_to :branch
    validates :name, presence: true
end