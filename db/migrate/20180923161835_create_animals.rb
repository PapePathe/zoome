class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals, id: :uuid do |t|
      t.references :family, foreign_key: true, type: :uuid
      t.string :name

      t.timestamps
    end
  end
end
