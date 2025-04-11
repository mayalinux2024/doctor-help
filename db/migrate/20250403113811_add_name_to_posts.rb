class AddNameToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :name, :text
  end
end
