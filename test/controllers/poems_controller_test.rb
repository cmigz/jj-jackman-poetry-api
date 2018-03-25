require 'test_helper'

class PoemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poem = poems(:one)
  end

  test "should get index" do
    get poems_url, as: :json
    assert_response :success
  end

  test "should create poem" do
    assert_difference('Poem.count') do
      post poems_url, params: { poem: { collection: @poem.collection, content: @poem.content, featured: @poem.featured, image: @poem.image, name: @poem.name, publish: @poem.publish, publish_date: @poem.publish_date } }, as: :json
    end

    assert_response 201
  end

  test "should show poem" do
    get poem_url(@poem), as: :json
    assert_response :success
  end

  test "should update poem" do
    patch poem_url(@poem), params: { poem: { collection: @poem.collection, content: @poem.content, featured: @poem.featured, image: @poem.image, name: @poem.name, publish: @poem.publish, publish_date: @poem.publish_date } }, as: :json
    assert_response 200
  end

  test "should destroy poem" do
    assert_difference('Poem.count', -1) do
      delete poem_url(@poem), as: :json
    end

    assert_response 204
  end
end
