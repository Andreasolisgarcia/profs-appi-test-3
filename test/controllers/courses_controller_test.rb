require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url, as: :json
    assert_response :success
  end

  test "should create course" do
    assert_difference("Course.count") do
      post courses_url, params: { course: { additional_cost: @course.additional_cost, description: @course.description, duration: @course.duration, image_url: @course.image_url, is_online: @course.is_online, price: @course.price, title: @course.title, user_id: @course.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show course" do
    get course_url(@course), as: :json
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { additional_cost: @course.additional_cost, description: @course.description, duration: @course.duration, image_url: @course.image_url, is_online: @course.is_online, price: @course.price, title: @course.title, user_id: @course.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy course" do
    assert_difference("Course.count", -1) do
      delete course_url(@course), as: :json
    end

    assert_response :no_content
  end
end
