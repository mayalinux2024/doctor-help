class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :body, :case
  end
end
