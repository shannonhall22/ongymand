class GymFeature < ActiveRecord::Base
  has_many :gyms
  has_many :features
end
