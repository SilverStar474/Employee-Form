class Employeeform < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :address, presence: true
    validates :phone_number, presence: true
    validates :marital_status, presence: true
    validates :email, presence: true
    validates :college, presence: true
    validates :degree, presence: true
    validates :stream, presence: true
    validates :cgpa, presence: true
    validates :dob, presence: true
    validates :experienced, presence: true
end
