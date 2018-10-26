class CreateProjectCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :project_companies do |t|
      t.references :project, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
