class AddFirstNameAndLastNameToAnimalKeepers < ActiveRecord::Migration[5.2]
  def change
    add_column :animal_keepers, :job, :string
    add_column :animal_keepers, :first_name, :string
    add_column :animal_keepers, :last_name, :string
    add_column :animal_keepers, :birth_date, :date
  end
end
