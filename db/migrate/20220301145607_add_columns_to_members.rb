class AddColumnsToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :name, :string
    add_column :members, :email, :string
    add_column :members, :lattes, :string
    add_column :members, :position, :string
    add_column :members, :title, :string
  end
end
