class Routine < ActiveRecord::Base
  validates :title, :focus, presence: true
end
