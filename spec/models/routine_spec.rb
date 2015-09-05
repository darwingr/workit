require 'rails_helper'

RSpec.describe Routine, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:focus) }
  end
end
