require 'rails_helper'

RSpec.describe Resource, type: :model do
  it { should belong_to :lesson }
end
