class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :category
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_companies
  has_many :projects, through: :project_companies
end
