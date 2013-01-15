class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.string :company
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :current, :default => false
      t.integer :applicant_id

      t.timestamps
    end
  end
end
