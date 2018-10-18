require 'test_helper'

class TeamMatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_mate = team_mates(:one)
  end

  test "should get index" do
    get team_mates_url
    assert_response :success
  end

  test "should get new" do
    get new_team_mate_url
    assert_response :success
  end

  test "should create team_mate" do
    assert_difference('TeamMate.count') do
      post team_mates_url, params: { team_mate: { department: @team_mate.department, email: @team_mate.email, expertise: @team_mate.expertise, name: @team_mate.name, phone_number: @team_mate.phone_number, picture: @team_mate.picture } }
    end

    assert_redirected_to team_mate_url(TeamMate.last)
  end

  test "should show team_mate" do
    get team_mate_url(@team_mate)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_mate_url(@team_mate)
    assert_response :success
  end

  test "should update team_mate" do
    patch team_mate_url(@team_mate), params: { team_mate: { department: @team_mate.department, email: @team_mate.email, expertise: @team_mate.expertise, name: @team_mate.name, phone_number: @team_mate.phone_number, picture: @team_mate.picture } }
    assert_redirected_to team_mate_url(@team_mate)
  end

  test "should destroy team_mate" do
    assert_difference('TeamMate.count', -1) do
      delete team_mate_url(@team_mate)
    end

    assert_redirected_to team_mates_url
  end
end
