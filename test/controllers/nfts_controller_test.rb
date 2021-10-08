require "test_helper"

class NftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nft = nfts(:one)
  end

  test "should get index" do
    get nfts_url, as: :json
    assert_response :success
  end

  test "should create nft" do
    assert_difference('Nft.count') do
      post nfts_url, params: { nft: { animation_url: @nft.animation_url, description: @nft.description, external_url: @nft.external_url, name: @nft.name, nft_id: @nft.nft_id } }, as: :json
    end

    assert_response 201
  end

  test "should show nft" do
    get nft_url(@nft), as: :json
    assert_response :success
  end

  test "should update nft" do
    patch nft_url(@nft), params: { nft: { animation_url: @nft.animation_url, description: @nft.description, external_url: @nft.external_url, name: @nft.name, nft_id: @nft.nft_id } }, as: :json
    assert_response 200
  end

  test "should destroy nft" do
    assert_difference('Nft.count', -1) do
      delete nft_url(@nft), as: :json
    end

    assert_response 204
  end
end
