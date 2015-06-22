class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.boolean :weights
      t.boolean :cardio
      t.boolean :studios
      t.boolean :classes
      t.boolean :pool
      t.boolean :hot_tub
      t.boolean :basketball
      t.boolean :raquetball
      t.boolean :trainer
      t.boolean :sauna
      t.integer :gym_id

      t.timestamps null: false
    end
  end
end
