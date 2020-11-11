require "application_system_test_case"

class StorextrasTest < ApplicationSystemTestCase
  setup do
    @storextra = storextras(:one)
  end

  test "visiting the index" do
    visit storextras_url
    assert_selector "h1", text: "Storextras"
  end

  test "creating a Storextra" do
    visit storextras_url
    click_on "New Storextra"

    fill_in "Address", with: @storextra.address
    fill_in "Description", with: @storextra.description
    fill_in "Horario close", with: @storextra.horario_close
    fill_in "Horario open", with: @storextra.horario_open
    fill_in "Link facebook", with: @storextra.link_facebook
    fill_in "Link instagram", with: @storextra.link_instagram
    fill_in "Link web", with: @storextra.link_web
    fill_in "Link whatsapp", with: @storextra.link_whatsapp
    fill_in "Phone", with: @storextra.phone
    fill_in "Store", with: @storextra.store_id
    click_on "Create Storextra"

    assert_text "Storextra was successfully created"
    click_on "Back"
  end

  test "updating a Storextra" do
    visit storextras_url
    click_on "Edit", match: :first

    fill_in "Address", with: @storextra.address
    fill_in "Description", with: @storextra.description
    fill_in "Horario close", with: @storextra.horario_close
    fill_in "Horario open", with: @storextra.horario_open
    fill_in "Link facebook", with: @storextra.link_facebook
    fill_in "Link instagram", with: @storextra.link_instagram
    fill_in "Link web", with: @storextra.link_web
    fill_in "Link whatsapp", with: @storextra.link_whatsapp
    fill_in "Phone", with: @storextra.phone
    fill_in "Store", with: @storextra.store_id
    click_on "Update Storextra"

    assert_text "Storextra was successfully updated"
    click_on "Back"
  end

  test "destroying a Storextra" do
    visit storextras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Storextra was successfully destroyed"
  end
end
