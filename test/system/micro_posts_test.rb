require "application_system_test_case"

class MicroPostsTest < ApplicationSystemTestCase
  setup do
    @micro_post = micro_posts(:one)
  end

  test "visiting the index" do
    visit micro_posts_url
    assert_selector "h1", text: "Micro Posts"
  end

  test "creating a Micro post" do
    visit micro_posts_url
    click_on "New Micro Post"

    fill_in "Date", with: @micro_post.date
    fill_in "Memo", with: @micro_post.memo
    fill_in "Name", with: @micro_post.name
    fill_in "Price", with: @micro_post.price
    click_on "Create Micro post"

    assert_text "Micro post was successfully created"
    click_on "Back"
  end

  test "updating a Micro post" do
    visit micro_posts_url
    click_on "Edit", match: :first

    fill_in "Date", with: @micro_post.date
    fill_in "Memo", with: @micro_post.memo
    fill_in "Name", with: @micro_post.name
    fill_in "Price", with: @micro_post.price
    click_on "Update Micro post"

    assert_text "Micro post was successfully updated"
    click_on "Back"
  end

  test "destroying a Micro post" do
    visit micro_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micro post was successfully destroyed"
  end
end
