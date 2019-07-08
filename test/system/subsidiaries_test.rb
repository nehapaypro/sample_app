require "application_system_test_case"

class SubsidiariesTest < ApplicationSystemTestCase
  setup do
    @subsidiary = subsidiaries(:one)
  end

  test "visiting the index" do
    visit subsidiaries_url
    assert_selector "h1", text: "Subsidiaries"
  end

  test "creating a Subsidiary" do
    visit subsidiaries_url
    click_on "New Subsidiary"

    fill_in "Ceo", with: @subsidiary.CEO
    fill_in "Adress", with: @subsidiary.adress
    fill_in "Country", with: @subsidiary.country
    fill_in "Firm", with: @subsidiary.firm
    click_on "Create Subsidiary"

    assert_text "Subsidiary was successfully created"
    click_on "Back"
  end

  test "updating a Subsidiary" do
    visit subsidiaries_url
    click_on "Edit", match: :first

    fill_in "Ceo", with: @subsidiary.CEO
    fill_in "Adress", with: @subsidiary.adress
    fill_in "Country", with: @subsidiary.country
    fill_in "Firm", with: @subsidiary.firm
    click_on "Update Subsidiary"

    assert_text "Subsidiary was successfully updated"
    click_on "Back"
  end

  test "destroying a Subsidiary" do
    visit subsidiaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subsidiary was successfully destroyed"
  end
end
