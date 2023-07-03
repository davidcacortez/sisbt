class CreateCity < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :acronym
      t.references :state, foreign_key: 'state_id'
      t.timestamps
    end
  end
end
