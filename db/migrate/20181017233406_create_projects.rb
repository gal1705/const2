class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :role
      t.string :project_address
      t.string :showroom_address
      t.string :showroom_telephone
      t.string :opening_hours
      t.text :description
      t.text :characteristics
      t.boolean :barbecue_area
      t.boolean :gym
      t.boolean :pool
      t.boolean :multipurpose_room
      t.boolean :laundry_room
      t.boolean :controlled_access
      t.boolean :visitors_parking
      t.boolean :play_area
      t.boolean :club_house
      t.boolean :games_room
      t.boolean :green_areas
      t.boolean :bike_parking
      t.boolean :parking
      t.boolean :warehouses
      t.text :arch_finishes
      t.boolean :inmediate_availability
      t.date :availability_date
      t.integer :number_of_buildings
      t.integer :number_of_floors
      t.references :recompany, foreign_key: true

      t.timestamps
    end
  end
end
