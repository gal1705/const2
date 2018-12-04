require "application_system_test_case"

class RedescriptionsTest < ApplicationSystemTestCase
  setup do
    @redescription = redescriptions(:one)
  end

  test "visiting the index" do
    visit redescriptions_url
    assert_selector "h1", text: "Redescriptions"
  end

  test "creating a Redescription" do
    visit redescriptions_url
    click_on "New Redescription"

    fill_in "Image", with: @redescription.image
    fill_in "Ppal Content", with: @redescription.ppal_content
    fill_in "Ppal Title", with: @redescription.ppal_title
    fill_in "Recompany", with: @redescription.recompany_id
    fill_in "Second Content", with: @redescription.second_content
    fill_in "Second Title", with: @redescription.second_title
    fill_in "Terc Content", with: @redescription.terc_content
    fill_in "Terc Title", with: @redescription.terc_title
    click_on "Create Redescription"

    assert_text "Redescription was successfully created"
    click_on "Back"
  end

  test "updating a Redescription" do
    visit redescriptions_url
    click_on "Edit", match: :first

    fill_in "Image", with: @redescription.image
    fill_in "Ppal Content", with: @redescription.ppal_content
    fill_in "Ppal Title", with: @redescription.ppal_title
    fill_in "Recompany", with: @redescription.recompany_id
    fill_in "Second Content", with: @redescription.second_content
    fill_in "Second Title", with: @redescription.second_title
    fill_in "Terc Content", with: @redescription.terc_content
    fill_in "Terc Title", with: @redescription.terc_title
    click_on "Update Redescription"

    assert_text "Redescription was successfully updated"
    click_on "Back"
  end

  test "destroying a Redescription" do
    visit redescriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Redescription was successfully destroyed"
  end
end
