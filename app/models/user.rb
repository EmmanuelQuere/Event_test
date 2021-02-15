class User < ApplicationRecord

  has_many :attendances
  has_many :evenements, through: :attendances
end
