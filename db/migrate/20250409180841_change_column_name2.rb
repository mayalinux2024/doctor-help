class ChangeColumnName2 < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :name, :gender
  end
end
