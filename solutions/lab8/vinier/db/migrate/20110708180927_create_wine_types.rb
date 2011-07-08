class CreateWineTypes < ActiveRecord::Migration
  def self.up
    create_table :wine_types do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :wine_types
  end
end
