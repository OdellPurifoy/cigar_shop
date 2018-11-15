require 'test_helper'

class CigarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cigar = cigars(:one)
  end

  test "should get index" do
    get cigars_url
    assert_response :success
  end

  test "should get new" do
    get new_cigar_url
    assert_response :success
  end

  test "should create cigar" do
    assert_difference('Cigar.count') do
      post cigars_url, params: { cigar: { binder: @cigar.binder, brand: @cigar.brand, description: @cigar.description, filler: @cigar.filler, origin: @cigar.origin, price: @cigar.price, shape: @cigar.shape, size: @cigar.size, wrapper: @cigar.wrapper } }
    end

    assert_redirected_to cigar_url(Cigar.last)
  end

  test "should show cigar" do
    get cigar_url(@cigar)
    assert_response :success
  end

  test "should get edit" do
    get edit_cigar_url(@cigar)
    assert_response :success
  end

  test "should update cigar" do
    patch cigar_url(@cigar), params: { cigar: { binder: @cigar.binder, brand: @cigar.brand, description: @cigar.description, filler: @cigar.filler, origin: @cigar.origin, price: @cigar.price, shape: @cigar.shape, size: @cigar.size, wrapper: @cigar.wrapper } }
    assert_redirected_to cigar_url(@cigar)
  end

  test "should destroy cigar" do
    assert_difference('Cigar.count', -1) do
      delete cigar_url(@cigar)
    end

    assert_redirected_to cigars_url
  end
end
