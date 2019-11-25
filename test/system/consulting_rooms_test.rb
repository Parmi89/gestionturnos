require "application_system_test_case"

class ConsultingRoomsTest < ApplicationSystemTestCase
  setup do
    @consulting_room = consulting_rooms(:one)
  end

  test "visiting the index" do
    visit consulting_rooms_url
    assert_selector "h1", text: "Consulting Rooms"
  end

  test "creating a Consulting room" do
    visit consulting_rooms_url
    click_on "New Consulting Room"

    fill_in "Number", with: @consulting_room.number
    click_on "Create Consulting room"

    assert_text "Consulting room was successfully created"
    click_on "Back"
  end

  test "updating a Consulting room" do
    visit consulting_rooms_url
    click_on "Edit", match: :first

    fill_in "Number", with: @consulting_room.number
    click_on "Update Consulting room"

    assert_text "Consulting room was successfully updated"
    click_on "Back"
  end

  test "destroying a Consulting room" do
    visit consulting_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consulting room was successfully destroyed"
  end
end
