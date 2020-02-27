# frozen_string_literal: true

require 'application_system_test_case'

class DistilleriesTest < ApplicationSystemTestCase
  setup do
    @distillery = distilleries(:one)
  end

  test 'visiting the index' do
    visit distilleries_url
    assert_selector 'h1', text: 'Distilleries'
  end

  test 'creating a Distillery' do
    visit distilleries_url
    click_on 'New Distillery'

    fill_in 'City', with: @distillery.city
    fill_in 'Name', with: @distillery.name
    fill_in 'Region', with: @distillery.region_id
    fill_in 'Street address', with: @distillery.street_address
    fill_in 'Tour cost', with: @distillery.tour_cost
    check 'Tours' if @distillery.tours
    fill_in 'Website', with: @distillery.website
    fill_in 'Zip', with: @distillery.zip
    click_on 'Create Distillery'

    assert_text 'Distillery was successfully created'
    click_on 'Back'
  end

  test 'updating a Distillery' do
    visit distilleries_url
    click_on 'Edit', match: :first

    fill_in 'City', with: @distillery.city
    fill_in 'Name', with: @distillery.name
    fill_in 'Region', with: @distillery.region_id
    fill_in 'Street address', with: @distillery.street_address
    fill_in 'Tour cost', with: @distillery.tour_cost
    check 'Tours' if @distillery.tours
    fill_in 'Website', with: @distillery.website
    fill_in 'Zip', with: @distillery.zip
    click_on 'Update Distillery'

    assert_text 'Distillery was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Distillery' do
    visit distilleries_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Distillery was successfully destroyed'
  end
end
