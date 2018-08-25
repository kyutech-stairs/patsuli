class Tweet < ApplicationRecord
  belongs_to :user
  has_one :pashiri
  validates :wishing, presence: true
  validates :reward, presence: true
  validates :count, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  
  def self.refine_in(t, option={ d: 1})
    a = []
    d = option[:d]
    all.each do |one|
      if Geocoder::Calculations.distance_between([t.latitude, t.longitude], [one.latitude, one.longitude]) < d
        a.push(one)
      end
    end
    return a
  end
  
  scope :get_by_wishing, ->(wishing){
    where("wishing like ?", "%#{wishing}%")
  } 
    
end
