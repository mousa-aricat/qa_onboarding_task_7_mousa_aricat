class AttendanceSetup < ApplicationRecord
    belongs_to :branch
    validates :roaster, presence: true
end