class Tweet < ApplicationRecord
  belongs_to :user
  has_one :pashiri
  validates :wishing, presence: true
  validates :reward, presence: true
  validates :count, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
