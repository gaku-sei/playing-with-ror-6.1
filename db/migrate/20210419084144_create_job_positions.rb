class CreateJobPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :job_positions, id: :uuid do |t|
      t.string :title, null: false
      t.integer :public_id, null: false
      t.references :company, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end

    add_index :job_positions, %i[title company_id], unique: true
    add_index :job_positions, %i[public_id company_id], unique: true
  end
end
