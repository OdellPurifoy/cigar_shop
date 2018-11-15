require "application_system_test_case"

class CigarsTest < ApplicationSystemTestCase
  setup do
    @cigar = cigars(:one)
  end

  test "visiting the index" do
    visit cigars_url
    assert_selector "h1", text: "Cigars"
  end

  test "creating a Cigar" do
    visit cigars_url
    click_on "New Cigar"

    fill_in "Binder", with: @cigar.binder
    fill_in "Brand", with: @cigar.brand
    fill_in "Description", with: @cigar.description
    fill_in "Filler", with: @cigar.filler
    fill_in "Origin", with: @cigar.origin
    fill_in "Price", with: @cigar.price
    fill_in "Shape", with: @cigar.shape
    fill_in "Size", with: @cigar.size
    fill_in "Wrapper", with: @cigar.wrapper
    click_on "Create Cigar"

    assert_text "Cigar was successfully created"
    click_on "Back"
  end

  test "updating a Cigar" do
    visit cigars_url
    click_on "Edit", match: :first

    fill_in "Binder", with: @cigar.binder
    fill_in "Brand", with: @cigar.brand
    fill_in "Description", with: @cigar.description
    fill_in "Filler", with: @cigar.filler
    fill_in "Origin", with: @cigar.origin
    fill_in "Price", with: @cigar.price
    fill_in "Shape", with: @cigar.shape
    fill_in "Size", with: @cigar.size
    fill_in "Wrapper", with: @cigar.wrapper
    click_on "Update Cigar"

    assert_text "Cigar was successfully updated"
    click_on "Back"
  end

  test "destroying a Cigar" do
    visit cigars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cigar was successfully destroyed"
  end
end
