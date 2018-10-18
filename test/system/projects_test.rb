require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Arch Finishes", with: @project.arch_finishes
    fill_in "Availability Date", with: @project.availability_date
    fill_in "Barbecue Area", with: @project.barbecue_area
    fill_in "Bike Parking", with: @project.bike_parking
    fill_in "Characteristics", with: @project.characteristics
    fill_in "Club House", with: @project.club_house
    fill_in "Controlled Access", with: @project.controlled_access
    fill_in "Description", with: @project.description
    fill_in "Games Room", with: @project.games_room
    fill_in "Green Areas", with: @project.green_areas
    fill_in "Gym", with: @project.gym
    fill_in "Inmediate Availability", with: @project.inmediate_availability
    fill_in "Laundry Room", with: @project.laundry_room
    fill_in "Multipurpose Room", with: @project.multipurpose_room
    fill_in "Name", with: @project.name
    fill_in "Number Of Buildings", with: @project.number_of_buildings
    fill_in "Number Of Floors", with: @project.number_of_floors
    fill_in "Opening Hours", with: @project.opening_hours
    fill_in "Parking", with: @project.parking
    fill_in "Play Area", with: @project.play_area
    fill_in "Pool", with: @project.pool
    fill_in "Project Address", with: @project.project_address
    fill_in "Recompany", with: @project.recompany_id
    fill_in "Role", with: @project.role
    fill_in "Showroom Address", with: @project.showroom_address
    fill_in "Showroom Telephone", with: @project.showroom_telephone
    fill_in "Visitors Parking", with: @project.visitors_parking
    fill_in "Warehouses", with: @project.warehouses
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Arch Finishes", with: @project.arch_finishes
    fill_in "Availability Date", with: @project.availability_date
    fill_in "Barbecue Area", with: @project.barbecue_area
    fill_in "Bike Parking", with: @project.bike_parking
    fill_in "Characteristics", with: @project.characteristics
    fill_in "Club House", with: @project.club_house
    fill_in "Controlled Access", with: @project.controlled_access
    fill_in "Description", with: @project.description
    fill_in "Games Room", with: @project.games_room
    fill_in "Green Areas", with: @project.green_areas
    fill_in "Gym", with: @project.gym
    fill_in "Inmediate Availability", with: @project.inmediate_availability
    fill_in "Laundry Room", with: @project.laundry_room
    fill_in "Multipurpose Room", with: @project.multipurpose_room
    fill_in "Name", with: @project.name
    fill_in "Number Of Buildings", with: @project.number_of_buildings
    fill_in "Number Of Floors", with: @project.number_of_floors
    fill_in "Opening Hours", with: @project.opening_hours
    fill_in "Parking", with: @project.parking
    fill_in "Play Area", with: @project.play_area
    fill_in "Pool", with: @project.pool
    fill_in "Project Address", with: @project.project_address
    fill_in "Recompany", with: @project.recompany_id
    fill_in "Role", with: @project.role
    fill_in "Showroom Address", with: @project.showroom_address
    fill_in "Showroom Telephone", with: @project.showroom_telephone
    fill_in "Visitors Parking", with: @project.visitors_parking
    fill_in "Warehouses", with: @project.warehouses
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
