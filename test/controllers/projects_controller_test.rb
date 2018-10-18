require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { arch_finishes: @project.arch_finishes, availability_date: @project.availability_date, barbecue_area: @project.barbecue_area, bike_parking: @project.bike_parking, characteristics: @project.characteristics, club_house: @project.club_house, controlled_access: @project.controlled_access, description: @project.description, games_room: @project.games_room, green_areas: @project.green_areas, gym: @project.gym, inmediate_availability: @project.inmediate_availability, laundry_room: @project.laundry_room, multipurpose_room: @project.multipurpose_room, name: @project.name, number_of_buildings: @project.number_of_buildings, number_of_floors: @project.number_of_floors, opening_hours: @project.opening_hours, parking: @project.parking, play_area: @project.play_area, pool: @project.pool, project_address: @project.project_address, recompany_id: @project.recompany_id, role: @project.role, showroom_address: @project.showroom_address, showroom_telephone: @project.showroom_telephone, visitors_parking: @project.visitors_parking, warehouses: @project.warehouses } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { arch_finishes: @project.arch_finishes, availability_date: @project.availability_date, barbecue_area: @project.barbecue_area, bike_parking: @project.bike_parking, characteristics: @project.characteristics, club_house: @project.club_house, controlled_access: @project.controlled_access, description: @project.description, games_room: @project.games_room, green_areas: @project.green_areas, gym: @project.gym, inmediate_availability: @project.inmediate_availability, laundry_room: @project.laundry_room, multipurpose_room: @project.multipurpose_room, name: @project.name, number_of_buildings: @project.number_of_buildings, number_of_floors: @project.number_of_floors, opening_hours: @project.opening_hours, parking: @project.parking, play_area: @project.play_area, pool: @project.pool, project_address: @project.project_address, recompany_id: @project.recompany_id, role: @project.role, showroom_address: @project.showroom_address, showroom_telephone: @project.showroom_telephone, visitors_parking: @project.visitors_parking, warehouses: @project.warehouses } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
