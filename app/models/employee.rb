class Employee < ApplicationRecord
    VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true, 
                        length: {minimum: 3, maximum: 30}
    validates :email, presence: true, 
                        uniqueness: {case_sensitive: false},
                        format: { with: VALID_EMAIL_REGEX },
                        length: {minimum: 5, maximum: 100}
    validates :hire_date, presence: true, 
    validates :employment_number, presence: true, 

end