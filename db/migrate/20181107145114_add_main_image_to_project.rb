class AddMainImageToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :main_image, :string
  end
end
