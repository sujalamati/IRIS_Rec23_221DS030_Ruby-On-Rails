class CreateApprovers < ActiveRecord::Migration[7.0]
  def change
    create_table :approvers do |t|
      t.string :name
      t.integer :step
      t.string :comments
      t.string :decision
      t.integer :template_id ,foreign_key: true

      t.timestamps
    end
  end
end
