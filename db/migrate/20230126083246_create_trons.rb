class CreateTrons < ActiveRecord::Migration[7.0]
  def change
    create_table :trons do |t|
      t.string :character
      t.string :game
      t.string :location
      t.string :program

      t.timestamps
    end
  end
end
