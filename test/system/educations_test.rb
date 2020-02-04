require "application_system_test_case"

class EducationsTest < ApplicationSystemTestCase
  setup do
    @education = educations(:one)
  end

  test "visiting the index" do
    visit educations_url
    assert_selector "h1", text: "Educations"
  end

  test "creating a Education" do
    visit educations_url
    click_on "New Education"

    fill_in "Degree", with: @education.degree
    fill_in "Description", with: @education.description
    fill_in "Institution", with: @education.institution
    fill_in "Place", with: @education.place
    fill_in "User", with: @education.user_id
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "updating a Education" do
    visit educations_url
    click_on "Edit", match: :first

    fill_in "Degree", with: @education.degree
    fill_in "Description", with: @education.description
    fill_in "Institution", with: @education.institution
    fill_in "Place", with: @education.place
    fill_in "User", with: @education.user_id
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "destroying a Education" do
    visit educations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education was successfully destroyed"
  end
end
