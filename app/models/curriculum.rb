class Curriculum < ActiveRecord::Base
  belongs_to :instructor

  def self.alphabetized
    order(:title)
  end
end
