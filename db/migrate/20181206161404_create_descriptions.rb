class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.string :image
      t.string :ppal_title
      t.text :ppal_content
      t.string :second_title
      t.text :second_content
      t.string :terc_title
      t.text :terc_content
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
