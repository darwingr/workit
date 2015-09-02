class Workout < ActiveRecord::Base
  validates :title, :intensity, :focus, presence: true
end
