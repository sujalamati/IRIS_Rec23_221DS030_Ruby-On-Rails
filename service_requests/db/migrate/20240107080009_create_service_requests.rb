class CreateServiceRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :service_requests do |t|
      t.string :request
      t.integer :temp_id
      t.integer :current_step
      t.string :applicant_name
      t.integer :unique_id
      t.string :dept
      t.string :approval_status
      t.string :approval_flow
      t.string :field_name
      t.string :field_response

      t.timestamps
    end
  end
end
