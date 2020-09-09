require "application_system_test_case"

class TrailsTest < ApplicationSystemTestCase
  setup do
    @trail = trails(:one)
  end

  test "visiting the index" do
    visit trails_url
    assert_selector "h1", text: "Trails"
  end

  test "creating a Trail" do
    visit trails_url
    click_on "New Trail"

    fill_in "Length", with: @trail.length
    fill_in "Snail", with: @trail.snail_id
    fill_in "Vector", with: @trail.vector
    click_on "Create Trail"

    assert_text "Trail was successfully created"
    click_on "Back"
  end

  test "updating a Trail" do
    visit trails_url
    click_on "Edit", match: :first

    fill_in "Length", with: @trail.length
    fill_in "Snail", with: @trail.snail_id
    fill_in "Vector", with: @trail.vector
    click_on "Update Trail"

    assert_text "Trail was successfully updated"
    click_on "Back"
  end

  test "destroying a Trail" do
    visit trails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trail was successfully destroyed"
  end
end
