class Agent < ApplicationRecord
  has_many :buyers
  has_many :properties

  def self.unsold_homes
    select('ag')
  end
end
