require 'test_helper'

class StoreExtrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_extra = store_extras(:one)
  end

  test "should get index" do
    get store_extras_url
    assert_response :success
  end

  test "should get new" do
    get new_store_extra_url
    assert_response :success
  end

  test "should create store_extra" do
    assert_difference('StoreExtra.count') do
      post store_extras_url, params: { store_extra: { description: @store_extra.description, horario_closed: @store_extra.horario_closed, horario_open: @store_extra.horario_open, link_facebook: @store_extra.link_facebook, link_instagram: @store_extra.link_instagram, link_web: @store_extra.link_web, link_whatsapp: @store_extra.link_whatsapp, store_id: @store_extra.store_id } }
    end

    assert_redirected_to store_extra_url(StoreExtra.last)
  end

  test "should show store_extra" do
    get store_extra_url(@store_extra)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_extra_url(@store_extra)
    assert_response :success
  end

  test "should update store_extra" do
    patch store_extra_url(@store_extra), params: { store_extra: { description: @store_extra.description, horario_closed: @store_extra.horario_closed, horario_open: @store_extra.horario_open, link_facebook: @store_extra.link_facebook, link_instagram: @store_extra.link_instagram, link_web: @store_extra.link_web, link_whatsapp: @store_extra.link_whatsapp, store_id: @store_extra.store_id } }
    assert_redirected_to store_extra_url(@store_extra)
  end

  test "should destroy store_extra" do
    assert_difference('StoreExtra.count', -1) do
      delete store_extra_url(@store_extra)
    end

    assert_redirected_to store_extras_url
  end
end
