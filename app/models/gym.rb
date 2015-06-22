class Gym < ActiveRecord::Base
  belongs_to :gym_feature
  belongs_to :feature
end
