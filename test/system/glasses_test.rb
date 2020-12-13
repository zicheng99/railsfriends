require "application_system_test_case"

class GlassesTest < ApplicationSystemTestCase
  setup do
    @glass = glasses(:one)
  end

  test "visiting the index" do
    visit glasses_url
    assert_selector "h1", text: "Glasses"
  end

  test "creating a Glass" do
    visit glasses_url
    click_on "New Glass"

    fill_in "Name", with: @glass.name
    click_on "Create Glass"

    assert_text "Glass was successfully created"
    click_on "Back"
  end

  test "updating a Glass" do
    visit glasses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @glass.name
    click_on "Update Glass"

    assert_text "Glass was successfully updated"
    click_on "Back"
  end

  test "destroying a Glass" do
    visit glasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glass was successfully destroyed"
  end
end
