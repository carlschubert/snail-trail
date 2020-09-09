require "application_system_test_case"

class SnailsTest < ApplicationSystemTestCase
  setup do
    @snail = snails(:one)
  end

  test "visiting the index" do
    visit snails_url
    assert_selector "h1", text: "Snails"
  end

  test "creating a Snail" do
    visit snails_url
    click_on "New Snail"

    fill_in "Age", with: @snail.age
    fill_in "Name", with: @snail.name
    fill_in "Species", with: @snail.species
    click_on "Create Snail"

    assert_text "Snail was successfully created"
    click_on "Back"
  end

  test "updating a Snail" do
    visit snails_url
    click_on "Edit", match: :first

    fill_in "Age", with: @snail.age
    fill_in "Name", with: @snail.name
    fill_in "Species", with: @snail.species
    click_on "Update Snail"

    assert_text "Snail was successfully updated"
    click_on "Back"
  end

  test "destroying a Snail" do
    visit snails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snail was successfully destroyed"
  end
end
