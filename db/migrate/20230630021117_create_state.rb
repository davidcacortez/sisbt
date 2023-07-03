class CreateState < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :acronym
      t.references :country, foreign_key: 'country_id'
      t.timestamps
    end
  end
end
