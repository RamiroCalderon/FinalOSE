class Group < ApplicationRecord
  belongs_to :school
  belongs_to :coord
  belongs_to :drop
end
