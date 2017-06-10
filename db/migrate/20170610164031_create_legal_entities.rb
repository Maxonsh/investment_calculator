class CreateLegalEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :legal_entities do |t|
      t.string :name

      t.timestamps
    end
  end
end
