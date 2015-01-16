class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
