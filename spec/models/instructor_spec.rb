require 'rails_helper'

RSpec.describe Instructor, type: :model do
  it { should have_many :curriculums }
end
