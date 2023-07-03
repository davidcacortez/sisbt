class CreateCountry < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :country
      t.string :acronym
      
      t.timestamps
    end
  end
end
