class Addcolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :registrations, :price, :integer
  end
end
