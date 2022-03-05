class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :lattes
      t.string :position
      t.string :title
      t.string :avatar
      t.string :section
      t.timestamps
    end
  end
end
