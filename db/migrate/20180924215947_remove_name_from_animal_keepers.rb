class RemoveNameFromAnimalKeepers < ActiveRecord::Migration[5.2]
  def up
    remove_column :animal_keepers, :name
  end

  def down
    add_column :animal_keepers, :name, :string
  end
end
