class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :subject
      t.string :school_name
      t.date :graduation_date
      t.date :start_date
      t.string :program_title
      t.integer :applicant_id

      t.timestamps
    end
  end
end
