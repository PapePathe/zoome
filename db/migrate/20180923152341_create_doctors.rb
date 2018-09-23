class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors, id: :uuid do |t|
      t.string :name
      t.references :zoo, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
