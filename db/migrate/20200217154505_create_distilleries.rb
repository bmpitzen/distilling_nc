class CreateDistilleries < ActiveRecord::Migration[6.0]
  def change
    create_table :distilleries do |t|
      t.string :name
      t.string :stree_address
      t.string :city
      t.string :zip
      t.references :region, null: false, foreign_key: true
      t.boolean :tours
      t.string :tour_cost
      t.string :website

      t.timestamps
    end
  end
end
