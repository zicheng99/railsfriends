class AddDescToGlasses < ActiveRecord::Migration[6.1]
  def change
  	add_column :glasses, :desc, :string
  end
end
