class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients, id: :uuid do |t|
      t.string :idp_id, null: false
      t.references :company, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end

    add_index :clients, :idp_id, unique: true
  end
end
