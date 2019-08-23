class AddReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column(:author, :string)
      t.column(:rating, :integer)
      t.column(:content_body, :string)
      t.column(:location_id, :integer)
      t.timestamps()
    end
  end
end
