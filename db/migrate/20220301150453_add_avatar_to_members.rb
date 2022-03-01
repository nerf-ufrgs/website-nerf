class AddAvatarToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :avatar, :string
    add_column :members, :section, :string
  end
end
