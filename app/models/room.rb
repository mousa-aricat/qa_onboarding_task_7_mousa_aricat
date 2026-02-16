class Room < ApplicationRecord
    belongs_to :branch
    has_many :employee_rooms
    has_many :employees, through: :employee_rooms
    validates :name, presence: true
end