class RolifyCreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table(:applicants) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:templates_applicants, :id => false) do |t|
      t.references :template
      t.references :applicant
    end
    
    add_index(:applicants, :name)
    add_index(:applicants, [ :name, :resource_type, :resource_id ])
    add_index(:templates_applicants, [ :template_id, :applicant_id ])
  end
end
