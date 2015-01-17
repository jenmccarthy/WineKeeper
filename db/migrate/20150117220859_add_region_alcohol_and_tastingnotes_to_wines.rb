class AddRegionAlcoholAndTastingnotesToWines < ActiveRecord::Migration
  def change
    add_column :wines, :region, :string
    add_column :wines, :alcohol_content, :integer
    add_column :wines, :tasting_notes, :text
  end
end
