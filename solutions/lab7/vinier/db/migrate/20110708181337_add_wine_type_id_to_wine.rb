class AddWineTypeIdToWine < ActiveRecord::Migration
  def self.up
    add_column :wines, :wine_type_id, :integer
    add_index :wines, :wine_type_id
  end

  def self.down
    remove_index :wines, :wine_type_id
    remove_column :wines, :wine_type_id
  end
end