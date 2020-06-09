require "application_system_test_case"

class CateloriesTest < ApplicationSystemTestCase
  setup do
    @catelory = catelories(:one)
  end

  test "visiting the index" do
    visit catelories_url
    assert_selector "h1", text: "Catelories"
  end

  test "creating a Catelory" do
    visit catelories_url
    click_on "New Catelory"

    fill_in "Name", with: @catelory.name
    click_on "Create Catelory"

    assert_text "Catelory was successfully created"
    click_on "Back"
  end

  test "updating a Catelory" do
    visit catelories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @catelory.name
    click_on "Update Catelory"

    assert_text "Catelory was successfully updated"
    click_on "Back"
  end

  test "destroying a Catelory" do
    visit catelories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catelory was successfully destroyed"
  end
end
