class Lesson < ActiveRecord::Base
  belongs_to :curriculum

  def self.ordered
    order(:order)
  end
end
