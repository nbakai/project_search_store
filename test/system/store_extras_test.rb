require "application_system_test_case"

class StoreExtrasTest < ApplicationSystemTestCase
  setup do
    @store_extra = store_extras(:one)
  end

  test "visiting the index" do
    visit store_extras_url
    assert_selector "h1", text: "Store Extras"
  end

  test "creating a Store extra" do
    visit store_extras_url
    click_on "New Store Extra"

    fill_in "Description", with: @store_extra.description
    fill_in "Horario closed", with: @store_extra.horario_closed
    fill_in "Horario open", with: @store_extra.horario_open
    fill_in "Link facebook", with: @store_extra.link_facebook
    fill_in "Link instagram", with: @store_extra.link_instagram
    fill_in "Link web", with: @store_extra.link_web
    fill_in "Link whatsapp", with: @store_extra.link_whatsapp
    fill_in "Store", with: @store_extra.store_id
    click_on "Create Store extra"

    assert_text "Store extra was successfully created"
    click_on "Back"
  end

  test "updating a Store extra" do
    visit store_extras_url
    click_on "Edit", match: :first

    fill_in "Description", with: @store_extra.description
    fill_in "Horario closed", with: @store_extra.horario_closed
    fill_in "Horario open", with: @store_extra.horario_open
    fill_in "Link facebook", with: @store_extra.link_facebook
    fill_in "Link instagram", with: @store_extra.link_instagram
    fill_in "Link web", with: @store_extra.link_web
    fill_in "Link whatsapp", with: @store_extra.link_whatsapp
    fill_in "Store", with: @store_extra.store_id
    click_on "Update Store extra"

    assert_text "Store extra was successfully updated"
    click_on "Back"
  end

  test "destroying a Store extra" do
    visit store_extras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store extra was successfully destroyed"
  end
end
