class AddingKeytoCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :lot_id, :integer
  end
end
