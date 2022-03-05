class CreateSiriemaUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :siriema_users do |t|
      t.string :name
      t.string :email
      t.string :institution
      t.string :city
      t.string :country
      t.string :found_out_how
      t.string :worked_where
      t.timestamps
    end
  end
end
