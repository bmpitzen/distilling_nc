require "application_system_test_case"

class SpiritsTest < ApplicationSystemTestCase
  setup do
    @spirit = spirits(:one)
  end

  test "visiting the index" do
    visit spirits_url
    assert_selector "h1", text: "Spirits"
  end

  test "creating a Spirit" do
    visit spirits_url
    click_on "New Spirit"

    fill_in "Distillery", with: @spirit.distillery_id
    fill_in "Name", with: @spirit.name
    fill_in "Proof", with: @spirit.proof
    fill_in "Spirit type", with: @spirit.spirit_type_id
    click_on "Create Spirit"

    assert_text "Spirit was successfully created"
    click_on "Back"
  end

  test "updating a Spirit" do
    visit spirits_url
    click_on "Edit", match: :first

    fill_in "Distillery", with: @spirit.distillery_id
    fill_in "Name", with: @spirit.name
    fill_in "Proof", with: @spirit.proof
    fill_in "Spirit type", with: @spirit.spirit_type_id
    click_on "Update Spirit"

    assert_text "Spirit was successfully updated"
    click_on "Back"
  end

  test "destroying a Spirit" do
    visit spirits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spirit was successfully destroyed"
  end
end
