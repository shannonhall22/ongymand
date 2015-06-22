require 'test_helper'

class GymFeaturesControllerTest < ActionController::TestCase
  setup do
    @gym_feature = gym_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gym_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gym_feature" do
    assert_difference('GymFeature.count') do
      post :create, gym_feature: { feature_id: @gym_feature.feature_id, gym_id: @gym_feature.gym_id }
    end

    assert_redirected_to gym_feature_path(assigns(:gym_feature))
  end

  test "should show gym_feature" do
    get :show, id: @gym_feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gym_feature
    assert_response :success
  end

  test "should update gym_feature" do
    patch :update, id: @gym_feature, gym_feature: { feature_id: @gym_feature.feature_id, gym_id: @gym_feature.gym_id }
    assert_redirected_to gym_feature_path(assigns(:gym_feature))
  end

  test "should destroy gym_feature" do
    assert_difference('GymFeature.count', -1) do
      delete :destroy, id: @gym_feature
    end

    assert_redirected_to gym_features_path
  end
end
