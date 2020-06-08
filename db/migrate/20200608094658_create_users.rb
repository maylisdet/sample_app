class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :email

      t.timestamps
    end
  end
  def down
    drop_table :users
  end
end
