class Template < ApplicationRecord
  rolify :role_cname => 'Applicant'
    has_many :approvers ,dependent: :destroy
end
