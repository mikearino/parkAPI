class AddLocationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.column :name, :string
      t.column :place, :string
      t.column :content, :string
      t.timestamps()
    end
  end
end
