class CreateSpirits < ActiveRecord::Migration[6.0]
  def change
    create_table :spirits do |t|
      t.string :name
      t.references :distillery, null: false, foreign_key: true
      t.references :spirit_type, null: false, foreign_key: true
      t.string :proof

      t.timestamps
    end
  end
end
