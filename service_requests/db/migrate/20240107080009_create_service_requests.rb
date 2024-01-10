class CreateServiceRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :service_requests do |t|
      t.string :request                 #Name of the service request
      t.integer :temp_id                #Template Id of service request
      t.integer :current_step           #Current Step of the Approval process
      t.string :applicant_name          #Applicant Name
      t.integer :unique_id              #Unique Id of the Applicant
      t.string :dept                    #Department of the Applicant
      t.string :approval_status         #Approval Status of the request
      t.string :approval_flow           #Approval Flow
      t.string :field_name              
      t.string :field_response
      t.string :current_approver        #Current Approver
      t.string :comments                #Comments made by Approvers/Forwarders
      
      t.timestamps
    end
  end
end
