require 'rails_helper'

RSpec.describe Curriculum, type: :model do
  it { should belong_to :instructor }
  it { should have_many :lessons }

  describe '.alphabetized' do
    it 'returns curriculums in order of title' do
      two = create :curriculum, title: 'Zoo'
      one = create :curriculum, title: 'Bananas'

      expect(described_class.alphabetized).to eq [one, two]
    end
  end
end
