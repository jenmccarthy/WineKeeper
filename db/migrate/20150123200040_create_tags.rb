class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :name, :string
      t.column :type_id, :integer

      t.timestamps
    end
  end
end
