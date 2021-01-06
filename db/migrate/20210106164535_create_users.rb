class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.integer :age
      t.integer :gender

      t.timestamps
    end
  end
end
