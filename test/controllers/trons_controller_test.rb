require "test_helper"

class TronsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tron = trons(:one)
  end

  test "should get index" do
    get trons_url, as: :json
    assert_response :success
  end

  test "should create tron" do
    assert_difference("Tron.count") do
      post trons_url, params: { tron: { character: @tron.character, game: @tron.game, location: @tron.location, program: @tron.program } }, as: :json
    end

    assert_response :created
  end

  test "should show tron" do
    get tron_url(@tron), as: :json
    assert_response :success
  end

  test "should update tron" do
    patch tron_url(@tron), params: { tron: { character: @tron.character, game: @tron.game, location: @tron.location, program: @tron.program } }, as: :json
    assert_response :success
  end

  test "should destroy tron" do
    assert_difference("Tron.count", -1) do
      delete tron_url(@tron), as: :json
    end

    assert_response :no_content
  end
end
