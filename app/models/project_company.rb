class ProjectCompany < ApplicationRecord
  belongs_to :project
  belongs_to :company
end
