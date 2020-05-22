require "application_system_test_case"

class ContributorsTest < ApplicationSystemTestCase
  setup do
    @contributor = contributors(:one)
  end

  test "visiting the index" do
    visit contributors_url
    assert_selector "h1", text: "Contributors"
  end

  test "creating a Contributor" do
    visit contributors_url
    click_on "New Contributor"

    fill_in "Name", with: @contributor.name
    fill_in "Novel", with: @contributor.novel_id
    fill_in "Post", with: @contributor.post_id
    fill_in "User", with: @contributor.user_id
    click_on "Create Contributor"

    assert_text "Contributor was successfully created"
    click_on "Back"
  end

  test "updating a Contributor" do
    visit contributors_url
    click_on "Edit", match: :first

    fill_in "Name", with: @contributor.name
    fill_in "Novel", with: @contributor.novel_id
    fill_in "Post", with: @contributor.post_id
    fill_in "User", with: @contributor.user_id
    click_on "Update Contributor"

    assert_text "Contributor was successfully updated"
    click_on "Back"
  end

  test "destroying a Contributor" do
    visit contributors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contributor was successfully destroyed"
  end
end
