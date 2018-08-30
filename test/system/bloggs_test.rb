require "application_system_test_case"

class BloggsTest < ApplicationSystemTestCase
  setup do
    @blogg = bloggs(:one)
  end

  test "visiting the index" do
    visit bloggs_url
    assert_selector "h1", text: "Bloggs"
  end

  test "creating a Blogg" do
    visit bloggs_url
    click_on "New Blogg"

    fill_in "Body", with: @blogg.body
    fill_in "Title", with: @blogg.title
    click_on "Create Blogg"

    assert_text "Blogg was successfully created"
    click_on "Back"
  end

  test "updating a Blogg" do
    visit bloggs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @blogg.body
    fill_in "Title", with: @blogg.title
    click_on "Update Blogg"

    assert_text "Blogg was successfully updated"
    click_on "Back"
  end

  test "destroying a Blogg" do
    visit bloggs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blogg was successfully destroyed"
  end
end
