class AddWineTypeIdToWine < ActiveRecord::Migration
  def self.up
    add_column :wines, :wine_type_id, :integer
  end

  def self.down
    remove_column :wines, :wine_type_id
  end
end
