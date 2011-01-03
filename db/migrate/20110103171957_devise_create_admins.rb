class DeviseCreateAdmins < ActiveRecord::Migration
  def self.up
    create_table(:admins) do |t|
      t.database_authenticatable :null => false
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
