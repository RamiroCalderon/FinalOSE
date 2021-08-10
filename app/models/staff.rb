class Staff < ApplicationRecord
  belongs_to :user
  belongs_to :school
  belongs_to :role
end
