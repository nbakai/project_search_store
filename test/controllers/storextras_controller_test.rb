require 'test_helper'

class StorextrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storextra = storextras(:one)
  end

  test "should get index" do
    get storextras_url
    assert_response :success
  end

  test "should get new" do
    get new_storextra_url
    assert_response :success
  end

  test "should create storextra" do
    assert_difference('Storextra.count') do
      post storextras_url, params: { storextra: { address: @storextra.address, description: @storextra.description, horario_close: @storextra.horario_close, horario_open: @storextra.horario_open, link_facebook: @storextra.link_facebook, link_instagram: @storextra.link_instagram, link_web: @storextra.link_web, link_whatsapp: @storextra.link_whatsapp, phone: @storextra.phone, store_id: @storextra.store_id } }
    end

    assert_redirected_to storextra_url(Storextra.last)
  end

  test "should show storextra" do
    get storextra_url(@storextra)
    assert_response :success
  end

  test "should get edit" do
    get edit_storextra_url(@storextra)
    assert_response :success
  end

  test "should update storextra" do
    patch storextra_url(@storextra), params: { storextra: { address: @storextra.address, description: @storextra.description, horario_close: @storextra.horario_close, horario_open: @storextra.horario_open, link_facebook: @storextra.link_facebook, link_instagram: @storextra.link_instagram, link_web: @storextra.link_web, link_whatsapp: @storextra.link_whatsapp, phone: @storextra.phone, store_id: @storextra.store_id } }
    assert_redirected_to storextra_url(@storextra)
  end

  test "should destroy storextra" do
    assert_difference('Storextra.count', -1) do
      delete storextra_url(@storextra)
    end

    assert_redirected_to storextras_url
  end
end
