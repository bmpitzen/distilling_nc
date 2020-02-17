require "application_system_test_case"

class SpiritTypesTest < ApplicationSystemTestCase
  setup do
    @spirit_type = spirit_types(:one)
  end

  test "visiting the index" do
    visit spirit_types_url
    assert_selector "h1", text: "Spirit Types"
  end

  test "creating a Spirit type" do
    visit spirit_types_url
    click_on "New Spirit Type"

    fill_in "Category", with: @spirit_type.category
    click_on "Create Spirit type"

    assert_text "Spirit type was successfully created"
    click_on "Back"
  end

  test "updating a Spirit type" do
    visit spirit_types_url
    click_on "Edit", match: :first

    fill_in "Category", with: @spirit_type.category
    click_on "Update Spirit type"

    assert_text "Spirit type was successfully updated"
    click_on "Back"
  end

  test "destroying a Spirit type" do
    visit spirit_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spirit type was successfully destroyed"
  end
end
