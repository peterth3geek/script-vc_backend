require 'test_helper'

class TextScansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_scan = text_scans(:one)
  end

  test "should get index" do
    get text_scans_url
    assert_response :success
  end

  test "should get new" do
    get new_text_scan_url
    assert_response :success
  end

  test "should create text_scan" do
    assert_difference('TextScan.count') do
      post text_scans_url, params: { text_scan: { body: @text_scan.body, title: @text_scan.title } }
    end

    assert_redirected_to text_scan_url(TextScan.last)
  end

  test "should show text_scan" do
    get text_scan_url(@text_scan)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_scan_url(@text_scan)
    assert_response :success
  end

  test "should update text_scan" do
    patch text_scan_url(@text_scan), params: { text_scan: { body: @text_scan.body, title: @text_scan.title } }
    assert_redirected_to text_scan_url(@text_scan)
  end

  test "should destroy text_scan" do
    assert_difference('TextScan.count', -1) do
      delete text_scan_url(@text_scan)
    end

    assert_redirected_to text_scans_url
  end
end
