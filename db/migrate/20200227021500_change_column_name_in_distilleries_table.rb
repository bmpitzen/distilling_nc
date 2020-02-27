class ChangeColumnNameInDistilleriesTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :distilleries, :stree_address, :street_address
  end
end
