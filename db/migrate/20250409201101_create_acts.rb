class CreateActs < ActiveRecord::Migration[7.0]
  def change
    create_table :acts do |t|
      t.string :name, null: false
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
