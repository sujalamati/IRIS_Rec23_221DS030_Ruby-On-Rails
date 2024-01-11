class Applicant < ApplicationRecord
  has_and_belongs_to_many :templates, :join_table => :templates_applicants
  
  belongs_to :resource,
             :polymorphic => true,
             :optional => true
  

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify
end
