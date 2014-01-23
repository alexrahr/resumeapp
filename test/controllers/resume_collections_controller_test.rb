require 'test_helper'

class ResumeCollectionsControllerTest < ActionController::TestCase
  setup do
    @resume_collection = resume_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resume_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume_collection" do
    assert_difference('ResumeCollection.count') do
      post :create, resume_collection: { name: @resume_collection.name, user_id: @resume_collection.user_id }
    end

    assert_redirected_to resume_collection_path(assigns(:resume_collection))
  end

  test "should show resume_collection" do
    get :show, id: @resume_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume_collection
    assert_response :success
  end

  test "should update resume_collection" do
    patch :update, id: @resume_collection, resume_collection: { name: @resume_collection.name, user_id: @resume_collection.user_id }
    assert_redirected_to resume_collection_path(assigns(:resume_collection))
  end

  test "should destroy resume_collection" do
    assert_difference('ResumeCollection.count', -1) do
      delete :destroy, id: @resume_collection
    end

    assert_redirected_to resume_collections_path
  end
end
