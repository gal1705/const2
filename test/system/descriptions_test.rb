require "application_system_test_case"

class DescriptionsTest < ApplicationSystemTestCase
  setup do
    @description = descriptions(:one)
  end

  test "visiting the index" do
    visit descriptions_url
    assert_selector "h1", text: "Descriptions"
  end

  test "creating a Description" do
    visit descriptions_url
    click_on "New Description"

    fill_in "Company", with: @description.company_id
    fill_in "Image", with: @description.image
    fill_in "Ppal Content", with: @description.ppal_content
    fill_in "Ppal Title", with: @description.ppal_title
    fill_in "Second Content", with: @description.second_content
    fill_in "Second Title", with: @description.second_title
    fill_in "Terc Content", with: @description.terc_content
    fill_in "Terc Title", with: @description.terc_title
    click_on "Create Description"

    assert_text "Description was successfully created"
    click_on "Back"
  end

  test "updating a Description" do
    visit descriptions_url
    click_on "Edit", match: :first

    fill_in "Company", with: @description.company_id
    fill_in "Image", with: @description.image
    fill_in "Ppal Content", with: @description.ppal_content
    fill_in "Ppal Title", with: @description.ppal_title
    fill_in "Second Content", with: @description.second_content
    fill_in "Second Title", with: @description.second_title
    fill_in "Terc Content", with: @description.terc_content
    fill_in "Terc Title", with: @description.terc_title
    click_on "Update Description"

    assert_text "Description was successfully updated"
    click_on "Back"
  end

  test "destroying a Description" do
    visit descriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Description was successfully destroyed"
  end
end
