class AddTypeIdAndYearToWines < ActiveRecord::Migration
  def change
    add_column :wines, :year, :integer
    add_column :wines, :type_id, :integer
  end
end
