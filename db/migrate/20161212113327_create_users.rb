class CreateUsers < ActiveRecord::Migration[5.0]
   def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :name
    end
  end
end
