class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :family_name, null: false
      t.string :given_name, null:false
      t.string :email, null:false

      t.timestamps
    end
  end
end
