require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it { should belong_to :curriculum }
  it { should have_many :resources }

  describe '.ordered' do
    it 'returns lessons in order of ascending order' do
      two = create :lesson, order: 2
      one = create :lesson, order: 1

      expect(described_class.ordered).to eq [one, two]
    end
  end
end
