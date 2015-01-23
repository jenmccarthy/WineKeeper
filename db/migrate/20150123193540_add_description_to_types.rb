class AddDescriptionToTypes < ActiveRecord::Migration
  def change
    add_column :types, :description, :text
  end
end
