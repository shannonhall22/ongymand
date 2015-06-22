class AddGymFeatureIdToFeature < ActiveRecord::Migration
  def change
    add_column :features, :gym_feature_id, :integer
  end
end
