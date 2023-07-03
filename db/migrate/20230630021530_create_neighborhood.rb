class CreateNeighborhood < ActiveRecord::Migration[7.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.references :city, foreign_key: 'city_id'
      t.timestamps
    end
  end
end

