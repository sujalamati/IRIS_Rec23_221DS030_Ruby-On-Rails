class Template < ApplicationRecord
    has_many :approvers ,dependent: :destroy
end
