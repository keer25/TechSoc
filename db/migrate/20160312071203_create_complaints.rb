class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
      add_index :complaints, [:user_id, :created_at]

  end
end
