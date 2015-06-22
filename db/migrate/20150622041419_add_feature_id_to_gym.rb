class AddFeatureIdToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :feature_id, :integer
  end
end
