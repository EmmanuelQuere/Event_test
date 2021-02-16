class Evenement < ApplicationRecord
  validates :start_date, presence: true
  validate :start_date_not_past

  validates :duration,
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }

  validate :mutiple_of_five

  validates :title,
    presence: true,
    length: { in: (5..140)}

  validates :description,
    presence: true,
    length: { in: (20..1000)}

  validates :price, presence: true
  validates :location, presence: true
  
  has_many :attendances
  has_many :users, through: :attendances


  def start_date_not_past
    if start_date < Date.today
      errors.add(:start_date, "The date can't be in the past")
    end
  end

  def mutiple_of_five
    if (duration%5 != 0)
      errors.add(:duration, "The duration must be a 5 multiple")
    end
  end
end
