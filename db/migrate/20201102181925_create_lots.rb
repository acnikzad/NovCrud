class CreateLots < ActiveRecord::Migration[6.0]
  def change
    create_table :lots do |t|
      t.string :name
      t.string :location
      t.string :phone

      t.timestamps
    end
  end
end
