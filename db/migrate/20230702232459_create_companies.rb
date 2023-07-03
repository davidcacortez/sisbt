class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string   :individual_name
      t.string   :cpf
      t.date     :date_of_birth
      t.string   :cnpj
      t.date     :opening_date
      t.string   :name
      t.string   :fantasy_name
      t.string   :cnae
      t.string   :cep
      t.string   :acronym_state
      t.string   :city
      t.string   :neighborhood
      t.string   :public_place
      t.string   :place_number
      t.string   :complement
      t.string   :email
      t.string   :phone
      t.string   :carry
      t.boolean  :status
      
      t.references :user, foreign_key: 'user_id'
      t.references :neighborhood, foreign_key: 'neighborhood_id'
      t.timestamps
    end
  end
end
