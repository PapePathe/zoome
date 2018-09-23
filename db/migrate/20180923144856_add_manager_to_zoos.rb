class AddManagerToZoos < ActiveRecord::Migration[5.2]
  def change
    add_reference :zoos, :manager, foreign_key: true, type: :uuid
  end
end
