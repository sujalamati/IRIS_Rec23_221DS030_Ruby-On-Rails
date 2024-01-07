class CreateTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :templates do |t|
      t.integer :template_id
      t.string :name
      t.string :applicants
      t.string :approval_flow
      t.string :field

      t.timestamps
    end
  end
end
