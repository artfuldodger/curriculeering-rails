require 'rails_helper'

RSpec.describe Curriculum, type: :model do
  it { should belong_to :instructor }

  describe '.alphabetized' do
    it 'returns curriculums in order of title' do
      two = FactoryGirl.create :curriculum, title: 'Zoo'
      one = FactoryGirl.create :curriculum, title: 'Bananas'

      expect(described_class.alphabetized).to eq [one, two]
    end
  end
end
