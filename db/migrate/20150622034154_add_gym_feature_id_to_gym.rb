class AddGymFeatureIdToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :gym_feature_id, :integer
  end
end
