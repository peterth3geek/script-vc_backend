require "application_system_test_case"

class TextScansTest < ApplicationSystemTestCase
  setup do
    @text_scan = text_scans(:one)
  end

  test "visiting the index" do
    visit text_scans_url
    assert_selector "h1", text: "Text Scans"
  end

  test "creating a Text scan" do
    visit text_scans_url
    click_on "New Text Scan"

    fill_in "Body", with: @text_scan.body
    fill_in "Title", with: @text_scan.title
    click_on "Create Text scan"

    assert_text "Text scan was successfully created"
    click_on "Back"
  end

  test "updating a Text scan" do
    visit text_scans_url
    click_on "Edit", match: :first

    fill_in "Body", with: @text_scan.body
    fill_in "Title", with: @text_scan.title
    click_on "Update Text scan"

    assert_text "Text scan was successfully updated"
    click_on "Back"
  end

  test "destroying a Text scan" do
    visit text_scans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Text scan was successfully destroyed"
  end
end
