class Dog < ApplicationRecord
  BREEDS = File.readlines(Rails.root.join('config', 'breeds.txt')).map(&:strip)

  validates :name, :colour, presence: true
  validates :breed, inclusion: { in: BREEDS }

  def age
    Time.zone.now.year - birthdate.year
  end
end
