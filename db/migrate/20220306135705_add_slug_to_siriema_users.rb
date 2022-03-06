class AddSlugToSiriemaUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :siriema_users, :slug, :string
    add_index :siriema_users, :slug, unique: true
  end
end
