class Curriculum < ActiveRecord::Base
  belongs_to :instructor
  has_many :lessons

  def self.alphabetized
    order(:title)
  end
end
