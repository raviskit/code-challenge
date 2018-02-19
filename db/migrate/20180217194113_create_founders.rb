class CreateFounders < ActiveRecord::Migration[5.1]
  def change
    create_table :founders do |t|
      t.string :full_name
      t.string :title
      t.integer :company_id
      t.timestamps
    end
    add_index :founders, :company_id
  end
end
