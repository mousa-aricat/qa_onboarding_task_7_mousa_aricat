class Branch < ApplicationRecord
    belongs_to :company
    has_many :employees
    has_many :rooms
    has_one :attendance_setup
    validates :name, presence: true
end