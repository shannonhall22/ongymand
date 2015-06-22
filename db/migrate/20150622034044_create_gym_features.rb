class CreateGymFeatures < ActiveRecord::Migration
  def change
    create_table :gym_features do |t|
      t.integer :gym_id
      t.integer :feature_id

      t.timestamps null: false
    end
  end
end
