class Lesson < ActiveRecord::Base
  belongs_to :curriculum
  has_many :resources

  def self.ordered
    order(:order)
  end
end
