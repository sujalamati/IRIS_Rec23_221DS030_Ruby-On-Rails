class CreateTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :templates do |t|
      t.integer :template_id          #Template id of the service request
      t.string :name              #Name of the service request
      t.string :applicants        #Applicants who can apply to the service request 
      t.string :approval_flow     #Approval Flow is stored as "FA_HoD_DeanSW"
      t.string :field             #Applicant response
      t.datetime :start_time      #Application Start Time
      t.datetime :end_time        #Application End Time

      t.timestamps
    end
  end
end
