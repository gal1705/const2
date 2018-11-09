class Project < ApplicationRecord
  belongs_to :recompany
  has_many :project_companies, inverse_of: :project, dependent: :destroy
  has_many :companies, through: :project_companies
  accepts_nested_attributes_for :project_companies,
  reject_if: lambda { |attributes| attributes['company_id'].blank? }
  mount_uploader :main_image, MainImageUploader
end
