class AddVersionColumnToSiriemaUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :siriema_users, :version, :string
  end
end
