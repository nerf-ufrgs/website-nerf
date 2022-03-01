class AddAvatarToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :avatar, :string
  end
end
