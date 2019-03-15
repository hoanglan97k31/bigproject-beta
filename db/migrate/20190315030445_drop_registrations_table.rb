class DropRegistrationsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :registrations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
