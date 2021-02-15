class Evenement < ApplicationRecord
  validates :start_date, presence: true
  validates :duration,
    presence: true,
    numericality: { greater_than_or_equal_to: 0, },
    validate: multiple_five(duration)


  validates :title,
    presence: true,
    length: { in: 5..140}

  validates :description,
    presence: true,
    length: { in: 20..1000}

  validates :price,
    presence: true


  validates :location, presence: true
  
  has_many :attendances
  has_many :users, through: :attendances

  private 

  def multiple_five (duration)
    if duration%5 == 0 then return true
    else return false
    end
  end

end
