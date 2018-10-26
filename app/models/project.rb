class Project < ApplicationRecord
  belongs_to :recompany
  has_many :project_companies, inverse_of: :project
  has_many :companies, through: :project_companies
  accepts_nested_attributes_for :project_companies,
  reject_if: lambda { |attributes| attributes['company_id'].blank? }
end
