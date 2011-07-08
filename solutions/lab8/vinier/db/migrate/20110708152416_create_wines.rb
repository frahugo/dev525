class CreateWines < ActiveRecord::Migration
  def self.up
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.date :acquired_on
      t.string :winery
      t.string :appellation
      t.string :color
      t.integer :years_to_maturity
      t.integer :quantity
      t.float :rating
      t.text :notes
      t.string :country
      t.string :code_saq

      t.timestamps
    end
  end

  def self.down
    drop_table :wines
  end
end
