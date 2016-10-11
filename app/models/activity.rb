class Activity < ApplicationRecord
  belongs_to :teacher

  has_many :activity_groups
end
