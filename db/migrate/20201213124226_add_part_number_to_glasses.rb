class AddPartNumberToGlasses < ActiveRecord::Migration[6.1]
  def change
    add_column :glasses, :part_number, :string
  end
end
