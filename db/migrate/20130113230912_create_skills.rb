class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.integer :applicant_id

      t.timestamps
    end
  end
end