class Workout < ActiveRecord::Base
  validates :intensity, presence: true
end
